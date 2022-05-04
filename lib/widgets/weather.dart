import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.deepOrange,
          size: 64.0,
        ),
        SizedBox(
          height: 10.0,
        ),
          Text(
            '$temp',
            style: TextStyle(
              fontSize: 46.0,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
            Text(
              '$location',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black26,
              ),
            )
      ],
    ),
  );
}