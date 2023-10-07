import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: <Widget>[
          Text(
            'Nearby',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    ),
    const Center(
      child: Text(
        'Notifications',
        style: TextStyle(fontSize: 24),
      ),
    ),
    const Center(
      child: Text(
        'Account',
        style: TextStyle(fontSize: 24),
      ),
    ),
    const Center(
      child: Text(
        'More',
        style: TextStyle(fontSize: 24),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text('Welcome',
              style: TextStyle(
              fontSize: 24,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                
                hintText: 'Search event',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        toolbarHeight: 256,
        backgroundColor: const Color.fromARGB(255, 51, 49, 49),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed 
        backgroundColor: Colors.white, // <-- This works for fixed
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}