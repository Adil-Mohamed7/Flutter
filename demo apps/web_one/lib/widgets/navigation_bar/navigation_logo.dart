// import 'package:flutter/material.dart';

// class NavBarLogoWidget extends StatelessWidget {
//   const NavBarLogoWidget({Key? key}) : super(key: key); // Make key optional

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 80,
//       width: 150,
//       child: Image.asset('assets/logo.png'),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:web_one/locator.dart';
import 'package:web_one/services/navigation_service.dart';

class NavBarLogoWidget extends StatelessWidget {
  const NavBarLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>()
            .navigateTo('HomeRoute'); // Adjust this to your actual route name
      },
      child: SizedBox(
        height: 80,
        width: 150,
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
