import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Weather app',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
      ),
    );
  }
}
