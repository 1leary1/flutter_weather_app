import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.pink.shade700,
    secondary: Colors.grey.shade600,
    surface: Colors.grey.shade800,
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      color: Colors.grey,
    ),
  ),
);
