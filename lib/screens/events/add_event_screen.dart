import 'package:flutter/material.dart';

import '../../models/event_model.dart';
import '../initials/explore_screen.dart';

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});
  static const String id = 'add_event';

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  final TextEditingController eventName = TextEditingController(),
      eventDescription = TextEditingController(),
      eventPeopleLimit = TextEditingController();
  final _addEventFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Text(
                  "Add Event",
                  style: TextStyle(fontSize: 28),
                ),
              ],
            ),
            backgroundColor: const Color(0xFF3D3D3D),
            toolbarHeight: 90,
          ),
          body: Form(
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
                        decoration: const InputDecoration(hintText: 'Name'),
                      ),
                      TextField(
                        controller: eventPeopleLimit,
                        decoration:
                            const InputDecoration(hintText: 'People Limit'),
                      ),
                      TextField(
                        controller: eventDescription,
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 4,
                        decoration:
                            const InputDecoration(hintText: 'Description'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFF6750A4)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(vertical: 20)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                          onPressed: () {
                            setState(() {
                              addEvent(
                                eventName.text,
                                eventDescription.text,
                                eventPeopleLimit.text,
                              );
                              _addEventFormKey.currentState?.reset();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ExploreScreen()),
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
          )),
    );
  }
}
