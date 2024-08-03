import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF006064),
    secondary: Color(0xFFAEC6CF),
    tertiary: Color(0xFFCDDC39),
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: const Color(0xFF2E2E2E),
      ),
);
