import 'package:flutter/material.dart';
import 'package:my_expense_app/pages/auth/auth_page.dart';
import 'package:my_expense_app/themes/dark_mode.dart';
import 'package:my_expense_app/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyExpense',
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: const AuthPage(),
    );
  }
}
