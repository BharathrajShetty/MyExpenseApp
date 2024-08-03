import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: Color.fromARGB(255, 31, 31, 31),
    secondary: Color(0xFFAEC6CF),
    tertiary: Color(0xFF77DD77),
    inversePrimary: Color.fromARGB(255, 53, 50, 50),
  ),
  textTheme: ThemeData.light().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: const Color(0xFF2E2E2E),
      ),
);
