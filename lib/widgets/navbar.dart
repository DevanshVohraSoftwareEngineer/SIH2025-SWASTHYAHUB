import 'package:flutter/material.dart';
import 'package:innobeez/pages/home.dart';
import 'package:innobeez/pages/schedule.dart';
import 'package:innobeez/pages/settings.dart';
class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final _screens = [
    //home screen
    HomePage(),
    //schedule screen
    SchedulePage(),
    //settings screen
    SettingsPage(),
    // Add your screen widgets here
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}