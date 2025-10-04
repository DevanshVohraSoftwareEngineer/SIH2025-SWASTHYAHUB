import 'package:flutter/material.dart';
import 'package:innobeez/widgets/navbar.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Container(
          child: Text('Settings Page'),
        ),
      ),
    );
  }
}