import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String name;
  final int id;
  const UserAvatar({
    Key, key,
    required this.id, required this.name
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('images/perfil_flavia.jpeg'),
        ),
        SizedBox(height: 5),
        Text('$name'),
      ],
    );
  }
}