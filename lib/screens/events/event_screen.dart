import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});
  static const String id = 'event_screen';
  static const String routeName = 'event_screen';

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Event Screen"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 256.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.black38),
                        child: Text(
                          'text $i',
                          style: const TextStyle(fontSize: 16.0),
                        ));
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Event XXX",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [Text("Row")],
                        ),
                        Row(
                          children: [Text("Row")],
                        ),
                        Row(
                          children: [Text("Row")],
                        ),
                        Row(
                          children: [Text("Row")],
                        ),
                      ],
                    ),
                    const Divider(),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [Text("Title")],
                            ),
                            Column(
                              children: [Text("Show all (6)")],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Record(),
                            Record(),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    const Column(
                      children: [
                        Text("Title"),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vehicula sapien eget viverra tincidunt. Aliquam et magna a odio facilisis tincidunt. Phasellus vitae consequat odio. Donec non volutpat tellus."),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vehicula sapien eget viverra tincidunt. Aliquam et magna a odio facilisis tincidunt. Phasellus vitae consequat odio. Donec non volutpat tellus."),
                      ],
                    ),
                    const Divider(),
                    const Column(
                      children: [Text("Organizer"), ProfileCard()],
                    ),
                    const Divider(),
                    const Column(
                      children: [
                        Text("What You'll Have"),
                        Item(),
                        Item(),
                        Item(),
                        Item(),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Register"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFFD9D9D9),
        ),
        Column(
          children: [
            Text("Name"),
            Text("Bio"),
          ],
        )
      ],
    );
  }
}

class Record extends StatelessWidget {
  const Record({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Item(),
        Item(),
      ],
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [Icon(Icons.add)],
        ),
        Column(
          children: [Text("Label")],
        ),
      ],
    );
  }
}
