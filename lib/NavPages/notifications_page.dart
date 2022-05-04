import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Notifications'),
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
