import 'package:flutter/material.dart';
import 'package:weater_app/pages/forecast_page.dart';
import 'package:weater_app/pages/locations_page.dart';
import 'package:weater_app/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  static const List<Widget> _pages = <Widget>[
    LocationsPage(),
    SettingsPage(),
    ForecastPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Locatinos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq_rounded),
            label: "Forecast",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
