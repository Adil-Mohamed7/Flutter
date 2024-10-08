import 'package:flutter/material.dart';
import 'package:go_router_sample/project/routes/app_route_config.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MyAppRouter _router = MyAppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _router.router.routeInformationProvider,
      routeInformationParser: _router.router.routeInformationParser,
      routerDelegate: _router.router.routerDelegate,
      title: 'Go Router Sample',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
