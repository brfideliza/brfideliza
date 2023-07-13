import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_flutter/screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Email And Password Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginScreen()
    );
  }
}