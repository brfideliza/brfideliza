import 'package:brfideliza/utilities/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import '../../components/circle_icon.dart';
import '../../components/div.dart';
import '../../components/h3.dart';
import '../../components/item_row.dart';
import '../../components/lorem_ipsum_text.dart';
import '../../components/profile_card.dart';
import '../initials/more_screen.dart';

class EventScreen extends StatefulWidget {

  final Map<String, dynamic> eventData;

  const EventScreen({super.key, required this. eventData});
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
          toolbarHeight: 0,
          title: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 256.0,
                        viewportFraction: 1.1,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 4),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 1400),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: false,
                        padEnds: false,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              height: 256.0,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  const BoxDecoration(color: Color(0xFF3D3D3D)),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Positioned(
                      left: 30,
                      top: 30,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                          onPressed: () {
                            Navigator.pushNamed(context, MoreScreen.routeName);
                          },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 12.0),
                      child: RotatedBox(
                          quarterTurns: 1,
                          child: Icon(
                            Icons.more_vert_sharp,
                            color: Colors.white,
                          )),
                    ),
                    const Positioned(
                      bottom: -23,
                      right: 45,
                      child: CircleIcon(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.eventData['name'],
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Column(
                        children: [
                          Item(icon: Icons.location_on, label: "Location"),
                          Item(icon: Icons.event, label: "Dates"),
                          Item(icon: Icons.groups_sharp, label: "People Limit - " + widget.eventData['people_limit']),
                          Item(icon: Icons.attach_money, label: "Price - " + widget.eventData['price']),
                        ],
                      ),
                    ),
                    const Divider(),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              H3(title: "Facilities"),
                              Text("Show all (6)")
                            ],
                          ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        H3(title: "Description"),
                        Text(widget.eventData['description']),
                      ],
                    ),
                    const Div(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [H3(title: "Organizer"), ProfileCard()],
                    ),
                    const Div(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const H3(
                          title: "What You'll Have",
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Column(
                            children: [
                              Item(
                                label: 'Item 1',
                                icon: Icons.check,
                              ),
                              Item(
                                label: 'Item 2',
                                icon: Icons.check,
                              ),
                              Item(
                                label: 'Item 3',
                                icon: Icons.check,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: kButtonStyle,
                              onPressed: () {},
                              child: const Text("Register"),
                            ),
                          ),
                        ],
                      ),
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
