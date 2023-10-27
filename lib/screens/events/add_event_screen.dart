import 'package:brfideliza/screens/events/select_date_event.dart';
import 'package:brfideliza/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../models/event_model.dart';
import '../initials/explore_screen.dart';
import '../../components/h3.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30.0, left: 37.0),
                child: Text(
                  "Event",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Form(
                key: _addEventFormKey,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8.0,
                              bottom: 8.0,
                              top: 0,
                            ),
                            child: TextField(
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
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
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
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
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
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
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
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15.0, left: 8.5),
                                child: Text(
                                  "Sections",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                                tileColor: Colors.white,
                                title: Text('Select Dates / Time'),
                                subtitle: Text('Select the dates with time for your event.'),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SelectDateEvent()),
                                  );
                                },
                                leading: const Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                trailing: const Icon(
                                  Icons.arrow_right,
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                                shape: const Border(
                                    left: BorderSide(width: 0.2),
                                    right: BorderSide(width: 0.2),
                                    top: BorderSide.none,
                                    bottom: BorderSide(width: 0.7))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                                tileColor: Colors.white,
                                title: Text('Select Images'),
                                subtitle: Text('Select the images from your device to your event.'),
                                leading: const Icon(
                                  Icons.camera_enhance_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                trailing: const Icon(
                                  Icons.arrow_right,
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                                shape: const Border(
                                    left: BorderSide(width: 0.2),
                                    right: BorderSide(width: 0.2),
                                    top: BorderSide.none,
                                    bottom: BorderSide(width: 0.7))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                                tileColor: Colors.white,
                                title: Text('Select Facilities'),
                                subtitle: Text('Select the facilities that the participants will have.'),
                                leading: const Icon(
                                  Icons.people_alt,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                trailing: const Icon(
                                  Icons.arrow_right,
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                                shape: const Border(
                                    left: BorderSide(width: 0.2),
                                    right: BorderSide(width: 0.2),
                                    top: BorderSide.none,
                                    bottom: BorderSide(width: 0.7))
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                                tileColor: Colors.white,
                                title: Text('Add Benefits'),
                                subtitle: Text('Add the benefits that the participants will have.'),
                                leading: const Icon(
                                  Icons.check_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                trailing: const Icon(
                                  Icons.arrow_right,
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                                shape: const Border(
                                    left: BorderSide(width: 0.2),
                                    right: BorderSide(width: 0.2),
                                    top: BorderSide.none,
                                    bottom: BorderSide(width: 0.7))
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.info_outline,
                              size: 25,
                            ),
                            Text('  0 of 4 sections filled.'),
                          ],
                        ),
                      ),

                      SizedBox(height: 25),

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
                              child: const Text('Submit'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
