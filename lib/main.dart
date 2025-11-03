import 'package:codefarms_core/code_farms_page.dart';
import 'package:codefarms_core/di/injection.dart';
import 'package:codefarms_core/resources/code_farms_firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final options = CodeFarmsFirebaseOptions(
    projectId: '',
    region: '',
    googleSignInClientId: '',
    serverClientId: '',
    web: FirebaseOptions(
      apiKey: '',
      appId: '',
      messagingSenderId: '',
      projectId: '',
      authDomain: '',
      storageBucket: '',
      measurementId: '',
    ),
    android: FirebaseOptions(
      apiKey: '',
      appId: '',
      messagingSenderId: '',
      projectId: '',
      storageBucket: '',
      androidClientId: '',
    ),
    ios: FirebaseOptions(
      apiKey: '',
      appId: '',
      messagingSenderId: '',
      projectId: '',
      storageBucket: '',
      androidClientId: '',
      iosClientId: '',
      iosBundleId: '',
    ),
  );

  await configureDependencies(options: options, isTesting: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codefarms Core',
      theme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: CodeFarmsPage(),
    );
  }
}
