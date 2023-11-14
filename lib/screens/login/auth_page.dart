import 'package:brfideliza/screens/initials/explore_screen.dart';
import 'package:brfideliza/screens/login/login_or_register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return const ExploreScreen();
          }
          else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}