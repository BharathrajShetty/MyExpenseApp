import 'package:flutter/material.dart';
import 'package:my_expense_app/constants/auth.dart';

class AuthInputTextField extends StatelessWidget {
  final bool isObscure;
  final String labelText;
  final String hintText;
  const AuthInputTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: authBorder,
        enabledBorder: authBorder,
        focusedBorder: authBorder,
      ),
    );
  }
}
