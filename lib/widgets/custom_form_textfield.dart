import 'package:flutter/material.dart';
import 'package:shopping_app/localization/app_localizations.dart';

enum CustomTextFieldType { email, name, password, number, phone, text }

class CustomFormTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final AutovalidateMode autovalidateMode;
  final bool obscureText;
  final CustomTextFieldType keyboardType;
  final TextEditingController? controller;

  const CustomFormTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.autovalidateMode,
    required this.keyboardType,
    this.obscureText = false,
    this.controller,
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

  TextInputType _mapKeyboardType(CustomTextFieldType type) {
    switch (type) {
      case CustomTextFieldType.email:
        return TextInputType.emailAddress;
      case CustomTextFieldType.name:
        return TextInputType.name;
      case CustomTextFieldType.number:
        return TextInputType.number;
      case CustomTextFieldType.phone:
        return TextInputType.phone;
      case CustomTextFieldType.password:
        return TextInputType.visiblePassword;
      case CustomTextFieldType.text:
        return TextInputType.text;
    }
  }

  String? _validate(String? value) {
    final t = AppLocalizations.of(context)!;

    if (value == null || value.isEmpty) {
      return t.error; // "This field is required"
    }

    switch (widget.keyboardType) {
      case CustomTextFieldType.email:
        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
        if (!emailRegex.hasMatch(value)) {
          return t.enterValidEmail;
        }
        break;

      case CustomTextFieldType.name:
        if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
          return t.enterValidName;
        }
        break;

      case CustomTextFieldType.number:
        if (!RegExp(r'^\d+$').hasMatch(value)) {
          return t.enterNumbersOnly;
        }
        break;

      case CustomTextFieldType.phone:
        if (!RegExp(r'^\d{10,}$').hasMatch(value)) {
          return t.enterValidPhone;
        }
        break;

      case CustomTextFieldType.password:
        if (value.length < 6) {
          return t.passwordMinLength;
        }
        break;

      case CustomTextFieldType.text:
        if (value.trim().isEmpty) {
          return t.error;
        }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return TextFormField(
      keyboardType: _mapKeyboardType(widget.keyboardType),
      controller: widget.controller,
      obscureText: _obscureText,
      validator: _validate,
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
