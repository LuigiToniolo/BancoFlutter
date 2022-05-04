import 'package:flutter/material.dart';
import 'package:nubank_project/screen/Dashboard.dart';

void main() {
  runApp(nubankApp());
}

class nubankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurpleAccent,
        accentColor: Colors.purpleAccent[900],
      ),
      home: Dashboard(),
    );
  }
}


