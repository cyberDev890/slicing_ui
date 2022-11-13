import 'dart:developer';

import 'package:flutter/material.dart';

import '../views/detail_furniture.dart';
import '../main.dart';
import '../properti.dart/furniture.dart';

part 'app_routes.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    log('This is route: ${settings.name}');

    switch (settings.name) {
      case Routes.home:
        return Homeview.route();
      case Routes.detailFurniture:
        return DetailFurniture.route(
            furniture: settings.arguments as Furniture);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
