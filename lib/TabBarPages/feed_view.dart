import 'package:flutter/material.dart';
import '../widgets/weather.dart';

class FeedPageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        currentWeather(Icons.wb_sunny_rounded, '25,3°', 'São Carlos')
      ],
    ),
  );
}

