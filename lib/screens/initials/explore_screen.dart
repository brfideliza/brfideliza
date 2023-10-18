import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  static const String id = 'explore_screen';

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SearchAnchor(
                    builder: (BuildContext context, SearchController controller) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(),
                          color: Colors.white
                        ),
                        child: SearchBar(
                          controller: controller,
                          padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 12.0),
                          ),
                          onTap: () {
                            controller.openView();
                          },
                          onChanged: (_) {
                            controller.openView();
                          },
                          leading: const Icon(Icons.search,
                              color: Colors.grey,
                            ),
                          hintText: "Search event",
                          hintStyle: MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.focused)) {
                              return TextStyle(
                                color: Colors.black,
                                fontSize: 15
                              );
                            }
                            return TextStyle(
                              color: Colors.grey,
                              fontSize: 15
                            );
                          }),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
                        ),
                      );
                    },
                    suggestionsBuilder: (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String event = 'event $index';
                        return ListTile(
                          title: Text(event),
                          onTap: () {
                            setState(() {
                              controller.closeView(event);
                            });
                          },
                        );
                      });
                    },
                  ),
                )

              ],
            ),
          ),
          toolbarHeight: 256,
          backgroundColor: const Color(0xFF3D3D3D),

        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1(title: "Nearby"),
              const Carousel(),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 32, 24, 0),
                child: Divider(),
              ),
              H1(title: "Favorites"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 156.0,
                    viewportFraction: 0.4,
                    enableInfiniteScroll: false,
                    padEnds: false,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                              height: 95,
                              decoration: BoxDecoration(
                                color: const Color(0xFF3D3D3D),
                                borderRadius: BorderRadius.circular(4.0),

                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: ClipOval(
                                      child: Material(
                                        child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: Icon(
                                              Icons.favorite,
                                              size: 30,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'TYPE',
                              style: TextStyle(color: Color(0xFF772C2C)),
                            ),
                            const Text(
                              'Event',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Widget $i',
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  const Carousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 165.0,
        viewportFraction: 0.9,
        enableInfiniteScroll: false,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                color: const Color(0xFF3D3D3D),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: ClipOval(
                              child: Material(
                                child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.event,
                                      size: 30,
                                    )),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              const Text(
                                'Event',
                                style: TextStyle(
                                    fontSize: 28, color: Colors.white),
                              ),
                              Text(
                                'Widget $i',
                                style: const TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ]),
            );
          },
        );
      }).toList(),
    );
  }
}

class H1 extends StatelessWidget {
  H1({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 32),
      ),
    );
  }
}
