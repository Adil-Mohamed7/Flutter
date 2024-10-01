import 'package:flutter/material.dart';
import 'package:web_one/widgets/navigation_bar/navigation_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const NavigationBarMobile({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();  // Open the drawer using the scaffold key
            },
          ),
          const NavBarLogoWidget()
        ],
      ),
    );
  }
}
