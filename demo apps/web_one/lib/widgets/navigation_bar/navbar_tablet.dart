import 'package:flutter/material.dart';
import 'package:web_one/routing/route_names.dart';
import 'package:web_one/widgets/navigation_bar/navbar_item.dart';
import 'package:web_one/widgets/navigation_bar/navigation_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogoWidget(
            key: null,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Episodes', EpisodesRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', AboutRoute),
            ],
          )
        ],
      ),
    );
  }
}
