import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../screens/initials/explore_screen.dart';
import '../screens/initials/notifications_screen.dart';
import '../screens/initials/more_screen.dart';
import '../screens/initials/profile_screen.dart';


class BottomNavigationBarClass extends StatelessWidget {
  const BottomNavigationBarClass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore_outlined,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_outlined,
          ),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
          ),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu_outlined,
          ),
          label: 'More',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, ExploreScreen.routeName);
            break;
          case 1:
            Navigator.pushNamed(context, NotificationsScreen.routeName);
            break;
          case 2:
            Navigator.pushNamed(context, ProfileScreen.routeName);
            break;
          case 3:
            Navigator.pushNamed(context, MoreScreen.routeName);
            break;
        }
      },
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedFontSize: 14,
      unselectedFontSize: 12,
    );
  }
}