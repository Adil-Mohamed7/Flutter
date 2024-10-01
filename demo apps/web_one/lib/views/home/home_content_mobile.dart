import 'package:flutter/material.dart';
import 'package:web_one/widgets/call_to_action/call_to_action.dart';
import 'package:web_one/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetailsWidget(),
        const SizedBox(
          height: 100,
        ),
        CallToActionWidget('Join Course'),
      ],
    );
  }
}
