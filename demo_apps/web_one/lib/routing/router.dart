import 'package:flutter/material.dart';
import 'package:web_one/routing/route_names.dart';
import 'package:web_one/views/about/about_view.dart';
import 'package:web_one/views/episodes/episodes_view.dart';
import 'package:web_one/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(const HomeView());
    case EpisodesRoute:
      return _getPageRoute(const EpisodesView());
    case AboutRoute:
      return _getPageRoute(const AboutView());
    default:
      return _getPageRoute(const HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}

// ignore: unused_element
class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
