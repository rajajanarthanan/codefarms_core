import 'package:codefarms_core/code_farms_page.dart';
import 'package:codefarms_core/di/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await configureDependencies(isTesting: true);
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
