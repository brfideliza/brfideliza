import 'package:flutter/material.dart';
import '../../components/bottom_navigation_bar.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});
  static const String id = 'notifications_screen';
  static const String routeName = 'notifications_screen';

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('Notifications'),
          ),
          bottomNavigationBar: const BottomNavigationBarClass(),
        );
  }
}