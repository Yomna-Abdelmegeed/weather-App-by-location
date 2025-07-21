class WeatherModel {
  final String name;
  final double temp;
  final String icon;
  final String description;
  final double lon;
  final double lat;
  final double speed;
  final int visibility;
  final int humidity;

  WeatherModel(
      {required this.name,
      required this.temp,
      required this.icon,
      required this.description,
      required this.lon,
      required this.lat,
      required this.speed,
      required this.visibility,
      required this.humidity});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      name: json['name'],
      temp: getTemp(kelvin: json['main']['temp']),
      icon: getIcon(icon: json['weather'][0]['icon']),
      description: json['weather'][0]['description'],
      lon: json['coord']['lon'],
      lat: json['coord']['lat'],
      speed: json['wind']['speed'],
      visibility: json['visibility'],
      humidity: json['main']['humidity'],
    );
  }
}

String getIcon({required String icon}) {
  return 'https://openweathermap.org/img/wn/$icon@2x.png';
}

double getTemp({required double kelvin}) {
  return kelvin - 273.15;
}
