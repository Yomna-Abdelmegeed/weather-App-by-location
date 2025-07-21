import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_by_location/Bloc/cubit/weather_cubit.dart';
import 'package:weather_app_by_location/model/weather_model.dart';
import 'package:weather_app_by_location/widgets/double_info_widgets.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<WeatherCubit>(context).weatherModel;
    return Column(
      spacing: 48,
      children: [
        SizedBox(height: 24),
        Text(
          weatherModel.name,
          style: TextStyle(
            fontSize: 45,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '${weatherModel.temp.round()}°',
              style: TextStyle(
                fontSize: 64,
                color: Colors.white,
              ),
            ),
            Image.network(weatherModel.icon)
          ],
        ),
        Text(
          weatherModel.description,
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        Text(
          'Lat:${weatherModel.lat}-Lon:${weatherModel.lon}',
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
              num: weatherModel.speed,
            ),
            DoubleInfoWidgets(
              title: 'visibilty',
              num: weatherModel.visibility,
            ),
            DoubleInfoWidgets(
              title: 'humadity',
              num: weatherModel.humidity,
            ),
          ],
        ),
      ],
    );
  }
}
