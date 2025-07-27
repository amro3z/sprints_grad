import 'package:flutter/material.dart';
import 'package:shopping_app/localization/app_localizations.dart';

Widget customAppBar({required BuildContext context}) {
  final local = AppLocalizations.of(context)!;

  return Container(
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.09,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF6A7FE8), Color(0xFF9A63EA)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Text(
      local.ourProducts,
      style: const TextStyle(
        fontFamily: 'CustomFont',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
