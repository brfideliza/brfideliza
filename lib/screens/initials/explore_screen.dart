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
        appBar: AppBar(title: const Text('Welcome',
          style: TextStyle(color: Colors.white,
          ),
        ),
          toolbarHeight: 100,
          backgroundColor: Colors.black87,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
                    return SearchBar(
                      controller: controller,
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0)),
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                      leading: const Icon(Icons.search),
                      hintText: "Search event",
                    );
                  }, suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
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
              }),
            ),
          ],
        ),
      ),
    );
  }
}

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
