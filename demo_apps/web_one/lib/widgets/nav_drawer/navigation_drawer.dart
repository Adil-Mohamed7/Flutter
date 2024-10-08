import 'package:flutter/material.dart';
import 'package:web_one/routing/route_names.dart';
import 'package:web_one/widgets/nav_drawer/drawer_item.dart';
import 'package:web_one/widgets/nav_drawer/navigation_drawer_header.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavigationDrawer(
      // Provide the required children parameter
      children: <Widget>[
        NavigationDrawerHeader(), // Use const if possible
        DrawerItem('Episodes', Icons.videocam, EpisodesRoute),
        DrawerItem('About', Icons.help, AboutRoute),
      ],
    );
  }
}
