import 'package:flutter/material.dart';
import '../../components/bottom_navigation_bar.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});
  static const String id = 'more_screen';
  static const String routeName = 'more_screen';

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('More'),
      ),
      bottomNavigationBar: const bottom_navigation_bar(),
    );
  }
}