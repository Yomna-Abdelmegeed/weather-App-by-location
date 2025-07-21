import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_by_location/Bloc/cubit/weather_cubit.dart';
import 'package:weather_app_by_location/widgets/info_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WeatherCubit>(context).getWeather();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Get Weather By Location",
        ),
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is WeatherFailure) {
            return Center(child: Text('Error'));
          } else {
            return InfoWidget();
          }
        },
      ),
    );
  }
}
