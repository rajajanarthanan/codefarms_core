import 'dart:io';
import 'package:agentiq/helpers/size_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:codefarms_core/resources/code_farms_firebase_options.dart';
import 'package:codefarms_core/resources/firebase_emulators.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';

/// Initializes Firebase app and connects to emulators if specified.
/// Call this before using any Firebase services.
/// Set [shouldUseEmulators] to true to connect to local emulators.
/// Defaults to false (production).
/// Throws if initialization fails.

bool firebaseEmulatorsInUse = false;
bool get isFirebaseEmulatorsInUse => firebaseEmulatorsInUse;

Future<void> initFirebaseApp({bool shouldUseEmulators = false}) async {
  try {
    // if (Firebase.apps.isEmpty) {
    /// load firebase options for the respective project
    await Firebase.initializeApp(
      options: CodeFarmsFirebaseOptions.currentPlatform,
    );
    // }
    if (!kIsWeb) {
      if (Platform.isAndroid) {
        await FirebaseAppCheck.instance.activate(
          // Use .debug for testing on emulators
          androidProvider:
              (shouldUseEmulators)
                  ? AndroidProvider.debug
                  : AndroidProvider.playIntegrity,
          // For production, use AndroidProvider.playIntegrity
        );

        if (shouldUseEmulators) {
          await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(false);
        }
      }
    }

    if (shouldUseEmulators) {
      firebaseEmulatorsInUse = true;
      await _connectToFirebaseEmulator();
    }

    if (kIsWeb) {
      await googleSignInPlatform.init(
        InitParameters(clientId: CodeFarmsFirebaseOptions.googleSignInClientId),
      );

      await googleSignIn.initialize(
        clientId: CodeFarmsFirebaseOptions.googleSignInClientId,
      );
    } else {
      if (Platform.isAndroid) {
        await googleSignInPlatform.init(const InitParameters());
      }
    }
  } catch (e) {
    logger.e('❌ Failed to initialize Firebase: $e');
    rethrow;
  }
}

Future<void> _connectToFirebaseEmulator() async {
  String host = (kIsWeb) ? emulatorHost : androidEmulatorHost;
  FirebaseFirestore.instance.useFirestoreEmulator(host, firestoreEmulatorPort);
  await FirebaseAuth.instance.useAuthEmulator(host, authEmulatorPort);
  await FirebaseStorage.instance.useStorageEmulator(host, storageEmulatorPort);
  FirebaseFunctions.instance.useFunctionsEmulator(host, functionsEmulatorPort);

  logger.i('✅ Connected to Firebase Emulators');
}
