import 'package:brfideliza/firebase_options.dart';
import 'package:brfideliza/screens/events/add_event_screen.dart';
import 'package:brfideliza/screens/events/events_list.dart';
import 'package:brfideliza/screens/login/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/events/event_screen.dart';
import 'screens/events/select_date_event.dart';
import 'screens/initials/explore_screen.dart';
import 'screens/initials/more_screen.dart';
import 'screens/initials/notifications_screen.dart';
import 'screens/initials/profile_screen.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'screens/login/forgot_password_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/login/register_screen.dart';
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
      theme: ThemeData(),
      home: AuthPage(),
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        ExploreScreen.id: (context) => const ExploreScreen(),
        NotificationsScreen.id: (context) => const NotificationsScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        MoreScreen.id: (context) => const MoreScreen(),
        EventScreen.id: (context) => const EventScreen(eventData: {},),
        AddEventScreen.id: (context) => const AddEventScreen(),
        EventsListScreen.id: (context) => const EventsListScreen(),
        SelectDateEvent.id: (context) => const SelectDateEvent(),
      },
    );
  }
}
