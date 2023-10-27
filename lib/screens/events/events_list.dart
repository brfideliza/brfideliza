import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../components/bottom_navigation_bar.dart';


class EventsListScreen extends StatefulWidget {
  const EventsListScreen({super.key});
  static const String id = 'events_list_screen';
  static const String routeName = 'events_list_screen';

  @override
  State<EventsListScreen> createState() => _EventsListScreenState();
}

class _EventsListScreenState extends State<EventsListScreen> {

  final _userStream = FirebaseFirestore.instance.collection('events').snapshots();
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Events List'),
        backgroundColor: const Color(0xFF3D3D3D),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: StreamBuilder(
          stream: _userStream,
          builder: (context, snapshot) {

            if(snapshot.hasError) {
              return Text('Connection error');
            }

            if(snapshot.connectionState == ConnectionState.waiting) {
              return Text('Loading...');
            }

            var docs = snapshot.data!.docs;

            return ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                    child: ListTile(
                        tileColor: Colors.white,
                        title: Text(docs[index]['name']),
                        subtitle: Text(docs[index]['description']),
                        leading: const Icon(
                          Icons.event,
                          color: Colors.black,
                          size: 35,
                        ),
                        trailing: const Icon(
                          Icons.arrow_right,
                          color: Colors.black,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        shape: const Border(
                            left: BorderSide(width: 0.2),
                            right: BorderSide(width: 0.2),
                            top: BorderSide.none,
                            bottom: BorderSide(width: 0.7))
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Center(

                  );
                },
                itemCount: docs.length
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarClass(),
    );
  }
}