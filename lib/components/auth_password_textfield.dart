import 'package:flutter/material.dart';
import 'package:my_expense_app/constants/auth.dart';

class AuthPasswordTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  const AuthPasswordTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  @override
  State<AuthPasswordTextField> createState() => _AuthPasswordTextFieldState();
}

class _AuthPasswordTextFieldState extends State<AuthPasswordTextField> {
  bool _isObscured = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isObscured,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        hintText: widget.hintText,
        suffixIcon: GestureDetector(
          onTap: _togglePasswordVisibility,
          child: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        border: authBorder,
        enabledBorder: authBorder,
        focusedBorder: authBorder,
      ),
    );
  }
}
