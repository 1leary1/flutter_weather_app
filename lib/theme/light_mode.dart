import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      primary: Colors.pink.shade700,
      secondary: Colors.grey.shade600,
      surface: Colors.grey.shade400),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 24,
      color: Colors.grey,
    ),
  ),
);
