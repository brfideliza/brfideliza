import 'package:brfideliza/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../models/event_model.dart';
import '../initials/explore_screen.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({Key? key}) : super(key: key);
  static const String id = 'add_event';

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  final TextEditingController eventName = TextEditingController(),
      eventDescription = TextEditingController(),
      eventPeopleLimit = TextEditingController(),
      eventPrice = TextEditingController();
  final _addEventFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Add Event",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: const Color(0xFF3D3D3D),
          toolbarHeight: 90,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _addEventFormKey,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: [
                      TextField(
                        controller: eventName,
                        textCapitalization: TextCapitalization.words,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.event,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextField(
                        controller: eventDescription,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 4,
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.feed_outlined,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextField(
                        controller: eventPrice,
                        decoration: const InputDecoration(
                          labelText: 'Price',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.attach_money,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextField(
                        controller: eventPeopleLimit,
                        decoration: const InputDecoration(
                          labelText: 'People Limit',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.people_alt,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: kButtonStyle,
                          onPressed: () {
                            setState(() {
                              addEvent(
                                eventName.text,
                                eventDescription.text,
                                eventPeopleLimit.text,
                                eventPrice.text,
                              );
                              _addEventFormKey.currentState?.reset();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ExploreScreen(),
                                ),
                              );
                            });
                          },
                          child: const Text('Create Event'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
