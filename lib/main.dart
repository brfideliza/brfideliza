import 'package:brfideliza/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/initials/explore_screen.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'screens/login/forgot_password.dart';
import 'screens/login/login_screen.dart';
import 'screens/login/registration_screen.dart';
import 'screens/login/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // setUrlStrategy(PathUrlStrategy()); // to remove the '#' in the URL
  runApp(const BrFideliza());
}

class BrFideliza extends StatelessWidget {
  const BrFideliza({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BrFideliza",
      initialRoute: LoginScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        ExploreScreen.id: (context) => const ExploreScreen(),
      },
    );
  }
}
