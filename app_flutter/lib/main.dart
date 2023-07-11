import 'package:flutter/material.dart';
import 'package:login_flutter/screens/login_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: 'Email And Password Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginScreen()
    );
  }
}
