// import 'package:agentiq/agentiq.dart';
// import 'package:codefarms_core/services/auth_service.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';

// import 'auth_service_test.mocks.dart';

// // Add the @GenerateMocks annotation
// @GenerateNiceMocks([
//   MockSpec<FirebaseAuth>(),
//   MockSpec<GoogleSignIn>(),
//   MockSpec<User>(),
//   MockSpec<UserCredential>(),
//   MockSpec<GoogleSignInAccount>(),
//   MockSpec<GoogleSignInAuthentication>(),
// ])
// void main() {
//   late MockFirebaseAuth mockAuth;
//   late MockGoogleSignIn mockGoogleSignIn;
//   late FirebaseAuthService authService;
//   late MockUser mockUser;
//   late MockUserCredential mockUserCredential;

//   setUp(() {
//     mockAuth = MockFirebaseAuth();
//     mockGoogleSignIn = MockGoogleSignIn();
//     mockUser = MockUser();
//     mockUserCredential = MockUserCredential();

//     // Mock the authStateChanges stream BEFORE creating the service
//     when(mockAuth.authStateChanges()).thenAnswer((_) => Stream.value(null));

//     // Use the test constructor to inject mocks
//     authService = FirebaseAuthService.test(mockAuth, mockGoogleSignIn);
//   });

//   group('FirebaseAuthService', () {
//     group('authenticate', () {
//       test('should return AgentiqUser on successful authentication', () async {
//         // Mock the Firebase auth call
//         when(
//           mockAuth.signInWithEmailAndPassword(
//             email: 'test@example.com',
//             password: 'password',
//           ),
//         ).thenAnswer((_) async => mockUserCredential);

//         when(mockUserCredential.user).thenReturn(mockUser);
//         when(mockUser.uid).thenReturn('123');
//         when(mockUser.email).thenReturn('test@example.com');
//         when(mockUser.displayName).thenReturn('Test User');

//         final result = await authService.authenticate(
//           email: 'test@example.com',
//           password: 'password',
//         );

//         expect(result, isA<AgentiqUser>());
//         expect(result?.email, 'test@example.com');
//         expect(result?.id, '123');
//       });

//       test('should return null on FirebaseAuthException', () async {
//         when(
//           mockAuth.signInWithEmailAndPassword(
//             email: 'wrong@example.com',
//             password: 'wrongPassword',
//           ),
//         ).thenThrow(FirebaseAuthException(code: 'user-not-found'));

//         final result = await authService.authenticate(
//           email: 'wrong@example.com',
//           password: 'wrongPassword',
//         );

//         expect(result, isNull);
//       });

//       test('should return null when user credential is null', () async {
//         when(
//           mockAuth.signInWithEmailAndPassword(
//             email: 'test@example.com',
//             password: 'password',
//           ),
//         ).thenAnswer((_) async => mockUserCredential);

//         when(mockUserCredential.user).thenReturn(null);

//         final result = await authService.authenticate(
//           email: 'test@example.com',
//           password: 'password',
//         );

//         expect(result, isNull);
//       });
//     });

//     group('getCurrentUser', () {
//       test('should return current user from firebase auth', () async {
//         when(mockAuth.currentUser).thenReturn(mockUser);
//         when(mockUser.uid).thenReturn('123');
//         when(mockUser.email).thenReturn('currentuser@example.com');
//         when(mockUser.displayName).thenReturn('Current User');

//         final result = await authService.getCurrentUser();

//         expect(result, isA<AgentiqUser>());
//         expect(result?.email, 'currentuser@example.com');
//         expect(result?.id, '123');
//       });

//       test('should return null if no user is logged in', () async {
//         when(mockAuth.currentUser).thenReturn(null);

//         final result = await authService.getCurrentUser();

//         expect(result, isNull);
//       });
//     });

//     group('logout', () {
//       test(
//         'should call signOut on both FirebaseAuth and GoogleSignIn',
//         () async {
//           when(mockAuth.signOut()).thenAnswer((_) async {});
//           when(mockGoogleSignIn.signOut()).thenAnswer((_) async => null);

//           await authService.logout();

//           verify(mockAuth.signOut()).called(1);
//           verify(mockGoogleSignIn.signOut()).called(1);
//         },
//       );
//     });
//   });

//   tearDown(() {
//     reset(mockAuth);
//     reset(mockGoogleSignIn);
//     reset(mockUser);
//     reset(mockUserCredential);
//   });
// }
