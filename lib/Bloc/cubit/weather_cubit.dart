import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_by_location/helper/current_location.dart';
import 'package:weather_app_by_location/model/weather_model.dart';
import 'package:weather_app_by_location/service/service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  late WeatherModel weatherModel;

  void getWeather() async {
    try {
      emit(WeatherLoading());
      Position position = await determinePosition();
      weatherModel = await Service(Dio())
          .getWeather(lat: position.latitude, lon: position.longitude);
      emit(WeatherLoaded());
    } catch (e) {
      emit(WeatherFailure());
      throw ('Error getting location: $e');
    }
  }
}
