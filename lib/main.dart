import 'package:flutter/material.dart';
import 'package:weater_app/pages/home_page.dart';
import 'theme/light_mode.dart';
import 'theme/dark_mode.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
