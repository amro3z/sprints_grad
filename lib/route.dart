import 'package:flutter/material.dart';
import 'package:shopping_app/screens/Login_screen.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/signup_screen.dart';
import 'package:shopping_app/screens/welcome_screen.dart';

class AppRoute {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/welcome":
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case "/login":
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case "/signup":
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    }
  }
}
