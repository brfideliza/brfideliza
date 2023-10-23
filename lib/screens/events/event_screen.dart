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
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 256.0,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  padEnds: false,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 256.0,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration:
                            const BoxDecoration(color: Color(0xFF3D3D3D)),
                      );
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
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
                    Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [H3(), Text("Show all (6)")],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Column(
                            children: [
                              ItemRow(
                                icon1: Icons.air,
                                label1: 'Air Conditioning',
                                icon2: Icons.fastfood,
                                label2: 'Snacks',
                              ),
                              ItemRow(
                                icon1: Icons.chair,
                                label1: 'Great Armchairs',
                                icon2: Icons.wifi,
                                label2: 'WIFI',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Div(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        H3(),
                        LoremIpsumText(),
                      ],
                    ),
                    const Div(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [H3(), ProfileCard()],
                    ),
                    const Div(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const H3(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Item(
                                  label: 'WI-FI',
                                  icon: Icons.wifi,
                                ),
                              ),
                              Item(
                                label: 'WI-FI',
                                icon: Icons.wifi,
                              ),
                              Item(
                                label: 'WI-FI',
                                icon: Icons.wifi,
                              ),
                              Item(
                                label: 'WI-FI',
                                icon: Icons.wifi,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Register"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Div extends StatelessWidget {
  const Div({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Divider(),
    );
  }
}

class LoremIpsumText extends StatelessWidget {
  const LoremIpsumText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vehicula sapien eget viverra tincidunt. Aliquam et magna a odio facilisis tincidunt. Phasellus vitae consequat odio. Donec non volutpat tellus."),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vehicula sapien eget viverra tincidunt. Aliquam et magna a odio facilisis tincidunt. Phasellus vitae consequat odio. Donec non volutpat tellus."),
        ],
      ),
    );
  }
}

class H3 extends StatelessWidget {
  const H3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Title",
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}

class ItemRow extends StatelessWidget {
  ItemRow({
    super.key,
    required this.icon1,
    required this.label1,
    required this.icon2,
    required this.label2,
  });

  late IconData icon1;
  late IconData icon2;
  late String label1;
  late String label2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Item(
            icon: icon1,
            label: label1,
          ),
        ),
        Expanded(
          child: Item(
            icon: icon2,
            label: label2,
          ),
        ),
      ],
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

class Item extends StatelessWidget {
  Item({
    super.key,
    required this.icon,
    required this.label,
  });

  late IconData icon;
  late String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(label),
      ],
    );
  }
}
