import 'package:flutter/material.dart';
import 'package:shopping_app/screens/Login_screen.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/signup_screen.dart';
import 'package:shopping_app/screens/welcome_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings settings) {
    Widget screen;

    switch (settings.name) {
      case "/welcome":
        screen = const WelcomeScreen();
        break;
      case "/login":
        screen = const LoginScreen();
        break;
      case "/signup":
        screen = const SignUpScreen();
        break;
      case "/home":
        screen = const HomeScreen();
        break;
      default:
        screen = const WelcomeScreen();
        break;
    }

    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => screen,
      transitionsBuilder: (_, animation, __, child) =>
          FadeTransition(opacity: animation, child: child),
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
