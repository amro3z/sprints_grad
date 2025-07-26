import 'package:flutter/material.dart';
import 'package:shopping_app/screens/Login_screen.dart';
import 'package:shopping_app/screens/welcome_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/welcome":
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case "/login":
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    }
  }
}
