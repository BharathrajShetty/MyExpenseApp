import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Color.fromARGB(255, 194, 205, 205),
    secondary: Color(0xFFAEC6CF),
    tertiary: Color(0xFFCDDC39),
  ),
  textTheme: ThemeData.dark().textTheme.apply(
        bodyColor: Colors.grey[800],
        displayColor: const Color.fromARGB(255, 238, 235, 235),
      ),
);
