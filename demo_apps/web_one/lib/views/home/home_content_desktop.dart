import 'package:flutter/material.dart';
import 'package:web_one/widgets/call_to_action/call_to_action.dart';
import 'package:web_one/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetailsWidget(),
        Expanded(
          child: Center(
            child: CallToActionWidget('Join Course'),
          ),
        )
      ],
    );
  }
}
