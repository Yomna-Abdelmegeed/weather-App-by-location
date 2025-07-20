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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff3A3F53),
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
      ),
      home: WeatherScreen(),
    );
  }
}
