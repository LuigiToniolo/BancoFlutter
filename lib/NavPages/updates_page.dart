import 'package:flutter/material.dart';

class UpdatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Updates'),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.deepPurple],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            )
        ),
      ),
    ),
  );
}
