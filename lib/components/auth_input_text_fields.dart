import 'package:flutter/material.dart';
import 'package:my_expense_app/constants/auth.dart';

class AuthInputTextField extends StatelessWidget {
  final bool isObscure;
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  const AuthInputTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.isObscure,
    required this.controller,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        border: authBorder,
        enabledBorder: authBorder,
        focusedBorder: authBorder,
      ),
    );
  }
}
