import 'package:flutter/material.dart';
import 'package:weather_app_by_location/widgets/double_info_widgets.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Get Weather By Location",
        ),
      ),
      body: Column(
        spacing: 48,
        children: [
          SizedBox(height: 24),
          Text(
            'City name',
            style: TextStyle(
              fontSize: 45,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '12°',
                style: TextStyle(
                  fontSize: 64,
                  color: Colors.white,
                ),
              ),
              Text(
                'ima',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            'Rain',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          Text(
            'Lat:37.451-Lon:-122.245 ',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DoubleInfoWidgets(
                title: 'wind speed',
                num: 3.55,
              ),
              DoubleInfoWidgets(
                title: 'visibilty',
                num: 1000,
              ),
              DoubleInfoWidgets(
                title: 'humadity',
                num: 32,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
