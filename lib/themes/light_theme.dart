import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF89CFF0),
    secondary: Color(0xFFAEC6CF),
    tertiary: Color(0xFF77DD77),
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: const Color(0xFF2E2E2E),
      ),
);
