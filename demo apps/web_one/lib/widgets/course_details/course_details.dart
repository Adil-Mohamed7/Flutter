import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetailsWidget extends StatelessWidget {
  const CourseDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 16
              : 21;
      return SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: titleSize,
              ),
              textAlign: textAlignment,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec arcu a quam bibendum malesuada. Sed malesuada, sapien nec auctor fermentum',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
