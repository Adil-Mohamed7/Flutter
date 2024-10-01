import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_one/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:web_one/widgets/call_to_action/call_to_action_tablet.dart';

class CallToActionWidget extends StatelessWidget {
  final String title;
  const CallToActionWidget(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
