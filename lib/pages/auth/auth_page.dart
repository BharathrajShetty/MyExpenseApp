import 'package:flutter/material.dart';
import 'package:my_expense_app/pages/auth/signin_page.dart';
import 'package:my_expense_app/pages/auth/signup_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isSignInPage = true;

  void authPageToggle() {
    setState(() {
      isSignInPage = !isSignInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isSignInPage) {
      return SignInPage(
        authPageToggle: authPageToggle,
      );
    } else {
      return SignupPage(
        authPageToggle: authPageToggle,
      );
    }
  }
}
