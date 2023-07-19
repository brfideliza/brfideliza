import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:brfideliza/firebase_options.dart';
import 'package:brfideliza/screens/login/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BrFideliza | Login',
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        home: const SplashScreen());
  }
}
