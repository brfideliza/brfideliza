import 'dart:async';
import 'package:brfideliza/screens/login/login_or_register_page.dart';
import 'package:brfideliza/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginOrRegisterPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Image.asset("assets/logo-brfideliza.png")));
  }
}
