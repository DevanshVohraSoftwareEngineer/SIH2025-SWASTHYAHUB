import 'package:flutter/material.dart';

class LabTest extends StatefulWidget {
  @override
  _LabTestState createState() => _LabTestState();
}

class _LabTestState extends State<LabTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab Test'),
      ),
      body: Center(
        child: Text('Lab Test Page'),
      ),
    );
  }
}
