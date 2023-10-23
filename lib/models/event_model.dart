import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

// extension StringExtensions on String {
//   String capitalize() {
//     return "${this[0].toUpperCase()}${substring(1)}";
//   }
// }

addEvent(
  String name,
  String description,
  String peopleLimit,
) {
  // final capitalizedName = name
  //     .split(' ')
  //     .map((word) => word.capitalize())
  //     .join(' '); // eg. "Hello world" => "Hello Word"
  final event = <String, dynamic>{
    "name": name,
    "description": description,
    "people_limit": peopleLimit,
  };

  db
      .collection("events")
      .doc(name)
      .set(event)
      .onError((e, _) => print("Error writing document: $e"));
}
