import 'package:firebasetest/main.dart';
import 'package:firebasetest/pages/UserPage.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Map<String, WidgetBuilder> _routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => const MyHomePage(title: 'home'),
    UserPage.routeName: (BuildContext context) =>
        const UserPage(title: 'Page users'),
  };

  static getRoutes() => _routes;
}
