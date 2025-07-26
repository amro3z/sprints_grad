import 'package:flutter/material.dart';
import 'package:shopping_app/route.dart';

void main() {
  runApp(InitWidget(appRoute: AppRoute()));
}

class InitWidget extends StatelessWidget {
  final AppRoute appRoute;
  const InitWidget({super.key, required this.appRoute});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRoute.generateRoute,
    );
  }
}
