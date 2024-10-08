import 'package:flutter/material.dart';
import 'package:web_one/widgets/navigation_bar/navbar_item.dart';

// class DrawerItem extends StatelessWidget {
//   final String title;
//   final IconData icon;
//   const DrawerItem(this.title, this.icon);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 30, top: 60),
//       child: Row(
//         children: <Widget>[
//           Icon(icon),
//           SizedBox(width: 30),
//           NavBarItem(title),
//         ],
//       ),
//     );
//   }
// }
class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(this.title, this.icon, this.navigationPath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(
            width: 30,
          ),
          NavBarItem(title, navigationPath)
        ],
      ),
    );
  }
}
