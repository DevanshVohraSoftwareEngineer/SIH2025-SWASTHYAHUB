import 'package:flutter/material.dart';
import 'package:innobeez/widgets/navbar.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Container(
          child: Text('Schedule Page'),
        ),
      ),
    );
  }
}