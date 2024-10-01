import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(String routeName) {
    // Use null check to ensure currentState is not null
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  void goBack() {
    // Use null check to ensure currentState is not null
    navigatorKey.currentState?.pop();
  }
}
