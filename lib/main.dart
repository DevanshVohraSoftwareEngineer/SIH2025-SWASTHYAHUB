import 'package:flutter/material.dart';
import 'package:innobeez/pages/home.dart';
import 'package:innobeez/pages/welcome_screen.dart';
import 'package:innobeez/widgets/navbar.dart';
import 'package:innobeez/pages/schedule.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Innobees',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}