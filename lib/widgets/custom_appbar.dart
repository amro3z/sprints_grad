import 'package:flutter/material.dart';

Widget customAppBar({required BuildContext context}) {
  return Container(
    padding: const EdgeInsets.all(20),
    alignment: Alignment.center,
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.09,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFF6A7FE8), Color(0xFF9A63EA)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Text(
      'Our Products',
      style: TextStyle(
        fontFamily: 'CustomFont',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
