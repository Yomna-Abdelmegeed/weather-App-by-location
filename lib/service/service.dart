import 'package:dio/dio.dart';
import 'package:weather_app_by_location/model/weather_model.dart';

class Service {
  final Dio dio;
  Service(this.dio);
  String baseUrl = 'https://api.openweathermap.org/data/2.5';
  String apiKey = 'd9a9f253cb28ccace787a71747003ce8';

  Future<WeatherModel> getWeather(
      {required double lat, required double lon}) async {
    Response response =
        await dio.get('$baseUrl/weather?lat=$lat&lon=$lon&appid=$apiKey');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);

    return weatherModel;
  }
}
