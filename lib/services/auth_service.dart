import 'dart:async';
import 'package:codefarms_core/resources/api_end_points.dart';
import 'package:codefarms_core/resources/code_farms_firebase_options.dart';
import 'package:codefarms_core/services/cloud_functions_service.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:agentiq/agentiq.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// Abstract interface for user authentication.
abstract class AgentiqAuthService {
  /// Authenticates the user with email and password.
  Future<AgentiqUser?> authenticate({
    required String email,
    required String password,
  });

  Future<AgentiqUser?> signInWithGoogle();

  /// Logs out the current user.
  Future<void> logout();

  /// Gets the currently authenticated user, if any.
  Future<AgentiqUser?> getCurrentUser();

  /// Emits the user on auth state changes (login/logout).
  Stream<AgentiqUser?> userAuthStateChanges();

  Stream<bool> isAuthInProgress();

  Future<Tuple2<bool, String>> createNewUserWithEmailPassword({
    required String email,
    required String password,
    required String name,
  });
}

/// Firebase implementation of [AgentiqAuthService].
///
/// Supports email/password and Google sign-in flows.
/// Defaults to [UserRole.user]. For contributor/admin roles, set [userRole].
@LazySingleton(as: AgentiqAuthService)
class FirebaseAuthService implements AgentiqAuthService {
  late final FirebaseAuth _auth;
  late final CloudFunctionsService _functionsService;

  /// A re-playable stream that maps Firebase user → AgentiqUser.
  ///
  /// Ensures only one mapping occurs no matter how many listeners exist.
  /// Keeps the latest user and shares it with new subscribers.
  late final Stream<AgentiqUser?> _userStream;

  /// Optional cached user for faster access
  AgentiqUser? _currentUser;

  bool authProgressFlag = false;

  // Add a StreamController for authProgressFlag
  final StreamController<bool> _authProgressController =
      StreamController<bool>.broadcast();

  // ...existing code...

  // Update authProgressFlag and notify listeners
  void _setAuthProgress(bool inProgress) {
    authProgressFlag = inProgress;
    _authProgressController.add(authProgressFlag);
  }

  @override
  Stream<bool> isAuthInProgress() => _authProgressController.stream;

  Future<AgentiqUser?> agentiqUserFromFirebaseUser(User user) async {
    try {
      final res = await _functionsService.callFunction(
        ApiEndPoints.getAgentiqUser,
        data: {"userId": user.uid},
      );
      if (res.status && res.data != null) {
        final resData = res.data as Map<String, dynamic>;
        return AgentiqUser(
          id: resData['id'] ?? "",
          email: resData['email'] ?? "",
          name: resData['name'] ?? "",
          role: UserRole.values.firstWhere(
            (e) => e.name.toString() == resData['role'],
            orElse: () => UserRole.user,
          ),
          phoneNumber: resData['phoneNumber'] ?? "",
          profilePictureUrl: resData['profilePictureUrl'] ?? "",
        );
      }
    } catch (e) {
      logger.e("Error parsing AgentiqUser from JSON: $e");
    }

    return AgentiqUser(
      id: user.uid,
      email: user.email ?? '',
      name: user.displayName ?? '',
      role: UserRole.user, // Default role; fetch from Firestore if needed
    );
  }

  FirebaseAuthService(this._functionsService) {
    _auth = FirebaseAuth.instance;

    _initializeStream();
  }

  @visibleForTesting
  FirebaseAuthService.test(this._auth) {
    _initializeStream();
  }

  void _initializeStream() {
    _userStream =
        _auth.authStateChanges().asyncMap((user) async {
          if (user != null) {
            if (!authProgressFlag) {
              _setAuthProgress(true);
            }
            _currentUser = await agentiqUserFromFirebaseUser(user);

            if (authProgressFlag) {
              _setAuthProgress(false);
            }
            return _currentUser;
          }
          return null;
        }).asBroadcastStream();
    _initGoogleSigninListener();
  }

  void _initGoogleSigninListener() {
    googleSignIn.authenticationEvents.listen((authEvent) async {
      try {
        _setAuthProgress(true);
        switch (authEvent) {
          case GoogleSignInAuthenticationEventSignIn():
            try {
              final GoogleSignInAccount user = authEvent.user;
              final GoogleSignInAuthentication googleAuth = user.authentication;

              // 2. Create a Firebase credential
              final AuthCredential credential = GoogleAuthProvider.credential(
                idToken: googleAuth.idToken, // ID Token is crucial for Firebase
              );

              final userCreds = await _auth.signInWithCredential(credential);
              if (userCreds.user == null) {
                _setAuthProgress(false);
                return;
              } else {
                _currentUser = await agentiqUserFromFirebaseUser(
                  userCreds.user!,
                );
                _setAuthProgress(false);
                return;
              }
            } catch (e) {
              logger.e("Error in Google Sign-In auth event handling: $e");
            }

            break;
          case GoogleSignInAuthenticationEventSignOut():
            // Handle sign-out if necessary
            break;
        }
        _setAuthProgress(false);
      } catch (e) {
        logger.e("Unexpected error in Google Sign-In listener: $e");
        _setAuthProgress(false);
      }
    });

    unawaited(
      googleSignInPlatform.attemptLightweightAuthentication(
        AttemptLightweightAuthenticationParameters(),
      ),
    );
  }

  Future<void> initEmulator(String host, int port) async {
    await FirebaseAuth.instance.useAuthEmulator(host, port);
  }

  /// Sign in with email and password.
  ///
  /// Returns `AgentiqUser` on success or `null` on failure.
  @override
  Future<AgentiqUser?> authenticate({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user == null) return null;
      _currentUser = await agentiqUserFromFirebaseUser(credential.user!);
      return _currentUser;
    } on FirebaseAuthException catch (e) {
      logger.e('Auth Error: ${e.code} - ${e.message}');
      return null;
    } catch (e) {
      logger.e('Unexpected auth error: $e');
      return null;
    }
  }

  /// Signs out the user from Firebase and Google (if signed in).
  @override
  Future<void> logout() async {
    try {
      await googleSignIn.signOut();
    } catch (e) {
      logger.e("_googleSignIn signOut Err: $e");
    }

    try {
      await _auth.signOut();
    } catch (e) {
      logger.e("_auth signOut Err: $e");
    }
  }

  /// Gets the currently authenticated user (from cache or Firebase).
  @override
  Future<AgentiqUser?> getCurrentUser() async {
    if (_currentUser != null) return _currentUser;
    final user = _auth.currentUser;
    if (user != null) {
      _currentUser = await agentiqUserFromFirebaseUser(user);
      return _currentUser;
    }
    return null;
  }

  /// Emits the current user on authentication state changes.
  ///
  /// Uses a shared stream to avoid reprocessing for every subscriber.
  @override
  Stream<AgentiqUser?> userAuthStateChanges() => _userStream;

  /// Starts interactive sign-in with Google using platform-native UI.
  ///
  /// Signs the user into Firebase using the Google account credentials.
  @override
  Future<AgentiqUser?> signInWithGoogle() async {
    try {
      _setAuthProgress(true);
      final authResult = await googleSignInPlatform.authenticate(
        const AuthenticateParameters(),
      );

      final tokens = authResult.authenticationTokens;

      final userCreds = await _auth.signInWithCredential(
        GoogleAuthProvider.credential(idToken: tokens.idToken),
      );

      if (userCreds.user == null) {
        _setAuthProgress(false);
        return null;
      }

      _currentUser = await agentiqUserFromFirebaseUser(userCreds.user!);

      _setAuthProgress(false);

      return _currentUser;
    } on FirebaseAuthException catch (e) {
      logger.e('Google Sign-In Error: ${e.code} - ${e.message}');
      _setAuthProgress(false);
      return null;
    } catch (e) {
      logger.e('Unexpected Google Sign-In Error: $e');
      _setAuthProgress(false);
      return null;
    }
  }

  /// Sends a password reset email to the given email address.
  ///
  /// Returns (true, message) if sent successfully, or (false, error).
  Future<Tuple2<bool, String>> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return const Tuple2(true, "password_reset_email_sent");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return const Tuple2(false, "user_not_found");
        case 'invalid-email':
          return const Tuple2(false, "invalid_email");
        default:
          return Tuple2(false, e.message ?? "unknown_error");
      }
    } catch (e) {
      return Tuple2(false, "unexpected_error: ${e.toString()}");
    }
  }

  /// Registers a new user using email and password.
  ///
  /// Automatically signs in the user and returns success.
  @override
  Future<Tuple2<bool, String>> createNewUserWithEmailPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (credential.user == null) {
        return const Tuple2(false, "user_creation_failed");
      }
      _currentUser = await agentiqUserFromFirebaseUser(credential.user!);

      return const Tuple2(true, "");
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return const Tuple2(false, "email_already_in_use");
        case 'invalid-email':
          return const Tuple2(false, "invalid_email");
        case 'weak-password':
          return const Tuple2(false, "weak_password");
        default:
          return Tuple2(false, e.message ?? "unknown_error");
      }
    } catch (e) {
      logger.e("Error in createNewUserWithEmailPassword: $e");
      return Tuple2(false, "unexpected_error: ${e.toString()}");
    }
  }

  void dispose() {
    _authProgressController.close();
  }
}
