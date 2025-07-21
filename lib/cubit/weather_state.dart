part of 'weather_cubit.dart';

sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherLoaded extends WeatherState {}

final class WeatherFailure extends WeatherState {
  final String message;
  WeatherFailure(this.message);
}
