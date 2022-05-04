import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  final String name;
  final String perfil;

  const UserPage({
    Key? key,
    required this.name,
    required this.perfil,
}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Mesmo assim, maravilhosa'),
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
    body: Image.asset(
      perfil,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}
