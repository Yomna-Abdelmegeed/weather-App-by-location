import 'dart:developer';

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

  void getCurrentLocation() async {
    try {
      emit(WeatherLoading());
      Position position = await determinePosition();
      weatherModel = await Service(Dio())
          .getWeather(lat: position.latitude, lon: position.longitude);
      double latitude = position.latitude;
      double longitude = position.longitude;
      emit(WeatherLoaded());
      log('Latitude: $latitude, Longitude: $longitude');

      // You can now use latitude and longitude in an API call or elsewhere
    } catch (e) {
      emit(WeatherFailure());
      log('Error getting location: $e');
    }
  }

  void getWeather() {
    getCurrentLocation();
  }
}
