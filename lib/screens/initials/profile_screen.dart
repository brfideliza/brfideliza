import 'package:flutter/material.dart';
import '../../components/bottom_navigation_bar.dart';
import '../../components/profile_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const String id = 'profile_screen';
  static const String routeName = 'profile_screen';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.2,
        backgroundColor: Colors.white,
        title: const Text('Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: const Column(
        children: [
          ProfileCard(),

          SizedBox(height: 10),

          Divider(),

          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.0, left: 25, right: 25),
                child: ListTile(
                  title: Text('Languages'),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: ListTile(
                  title: Text('Contact Us'),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: ListTile(
                  title: Text('Terms of Use'),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: ListTile(
                  title: Text('Privacy Policy'),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: ListTile(
                  title: Text('Share with Friends'),
                  trailing: const Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigationBarClass(),
    );
  }
}