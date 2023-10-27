import 'package:brfideliza/screens/events/add_event_screen.dart';
import 'package:flutter/material.dart';
import '../../components/bottom_navigation_bar.dart';

class SelectDateEvent extends StatefulWidget {
  const SelectDateEvent({super.key});
  static const String id = 'select_date_event';
  static const String routeName = 'select_date_event';

  @override
  State<SelectDateEvent> createState() => _SelectDateEventState();
}

class _SelectDateEventState extends State<SelectDateEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Select Dates',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [

        ],
      ),
      bottomNavigationBar: const BottomNavigationBarClass(),
    );
  }
}