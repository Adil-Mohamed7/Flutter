import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_one/locator.dart';
import 'package:web_one/routing/route_names.dart';
import 'package:web_one/routing/router.dart';
import 'package:web_one/services/navigation_service.dart';
import 'package:web_one/widgets/centered_view/centered_view.dart';
import 'package:web_one/widgets/nav_drawer/navigation_drawer.dart';
import 'package:web_one/widgets/navigation_bar/navigation_bar.dart';

class LayoutTemplate extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        // drawer: sizingInformation.isMobile ? const NavigationDrawerWidget() : null,
        key: _scaffoldKey,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawerWidget() // Use NavigationDrawerWidget directly
            : null,
        backgroundColor: Colors.white,
        body: CenteredViewScreen(
          child: Column(
            children: <Widget>[
              CustomNavigationBar(scaffoldKey: _scaffoldKey),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ),
        ),
      ),
    );
  }
}

// class HomeView extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) => Scaffold(
//         key: _scaffoldKey, // Assign the key to the Scaffold
//         drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
//             ? NavigationDrawerWidget() // Use NavigationDrawerWidget directly
//             : null,
//         backgroundColor: Colors.white,
//         body: CenteredViewScreen(
//           child: Column(
//             children: <Widget>[
//               CustomNavigationBar(
//                   scaffoldKey:
//                       _scaffoldKey), // Pass the scaffold key to the navbar
//               Expanded(
//                 child: ScreenTypeLayout(
//                   mobile: HomeContentMobile(),
//                   desktop: HomeContentDesktop(),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
