import 'package:advisory_app/widgets/StudentView.dart';
import 'package:advisory_app/widgets/homepage.dart';
import 'package:advisory_app/widgets/landingpage.dart';
import 'package:advisory_app/widgets/login_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String loginPage = '/';
  static const String homePage = '/homepage';
  static const String landingPage = '/landing';
  static const String studentprofilePage = '/studentView';

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
   
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (_) => const login(),
        );

      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case landingPage:
        return MaterialPageRoute(builder: (_) => Landing());

      case studentprofilePage:
      final args = settings.arguments as String;
        return MaterialPageRoute(builder: (_,) => StudentView(username: args));
      default:
        throw FormatException("Route not found");
    }
  }
}
