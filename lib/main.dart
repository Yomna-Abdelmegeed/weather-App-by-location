import 'package:flutter/material.dart';
import 'package:weather_app_by_location/screens/weather_screen.dart';

void main() {
  runApp(const WeatherAppByLocation());
}

class WeatherAppByLocation extends StatelessWidget {
  const WeatherAppByLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:WeatherScreen()
    );
  }
}