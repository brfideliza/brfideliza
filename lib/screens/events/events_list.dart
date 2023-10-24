import 'package:flutter/material.dart';
import '../../components/bottom_navigation_bar.dart';
import 'package:firebase_database/firebase_database.dart';

class EventsListScreen extends StatefulWidget {
  const EventsListScreen({super.key});
  static const String id = 'events_list_screen';
  static const String routeName = 'events_list_screen';

  @override
  State<EventsListScreen> createState() => _EventsListScreenState();
}

class _EventsListScreenState extends State<EventsListScreen> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Events List'),
        backgroundColor: const Color(0xFF3D3D3D),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.white,
              title: Text('List item'),
              subtitle: Text('Supporting line text lorem...'),
              leading: Icon(Icons.event, size: 40,),
              trailing: Icon(Icons.arrow_right),

            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 3,
              thickness: 1.5,
              color: Colors.black26,
            );
          },
          itemCount: 8
        ),
      bottomNavigationBar: const BottomNavigationBarClass(),
    );
  }
}