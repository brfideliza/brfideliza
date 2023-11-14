import 'package:brfideliza/screens/events/add_event_screen.dart';
import 'package:brfideliza/screens/events/events_list.dart';
import 'package:brfideliza/screens/events/event_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../components/bottom_navigation_bar.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});
  static const String id = 'more_screen';
  static const String routeName = 'more_screen';

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout), color: Colors.black,
          )
        ],
        title: const Text('More',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            GestureDetector(
              onTap: () {
                // Navigate to the page you want
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddEventScreen()),
                );
              },
              child: Text(
                'Adicionar Evento',
                style: TextStyle(
                  color: Colors.blue, // Customize the link text color
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: () {
                // Navigate to the page you want
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventsListScreen()),
                );
              },
              child: Text(
                'Lista de Eventos',
                style: TextStyle(
                  color: Colors.blue, // Customize the link text color
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: () {
                // Navigate to the page you want
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventScreen(eventData: {},)),
                );
              },
              child: Text(
                'Tela de Evento',
                style: TextStyle(
                  color: Colors.blue, // Customize the link text color
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarClass(),
    );
  }
}
