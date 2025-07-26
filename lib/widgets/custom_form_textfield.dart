import 'package:flutter/material.dart';

class CustomFormTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final AutovalidateMode autovalidateMode;
  final bool obscureText;

  const CustomFormTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.autovalidateMode,
    this.obscureText = false,
  });

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText; 
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      autovalidateMode: widget.autovalidateMode,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              )
            : null,
        hintText: widget.hintText,
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'CustomFont',
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontFamily: 'CustomFont',
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.grey, width: 1.2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.grey, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Colors.deepPurpleAccent[700]!,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
