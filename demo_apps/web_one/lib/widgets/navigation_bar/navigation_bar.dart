import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_one/widgets/navigation_bar/navbar_mobile.dart';
import 'package:web_one/widgets/navigation_bar/navbar_tablet.dart';

class CustomNavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey; // Make scaffoldKey optional

  const CustomNavigationBar({super.key, this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(
          scaffoldKey: scaffoldKey ??
              GlobalKey<ScaffoldState>()), // Pass the optional scaffoldKey
      tablet: const NavigationBarTabletDesktop(),
    );
  }
}
