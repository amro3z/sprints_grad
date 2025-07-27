import 'package:flutter/material.dart';

class CustomHomeText extends StatelessWidget {
  final String text;

  const CustomHomeText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'CustomFont',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
