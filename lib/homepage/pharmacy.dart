import 'package:flutter/material.dart';

class Pharmacy extends StatefulWidget {
  @override
  _PharmacyState createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy'),
      ),
      body: Center(
        child: Text('Pharmacy Page'),
      ),
    );
  }
}
