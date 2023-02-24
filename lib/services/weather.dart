import 'dart:developer';

import 'package:clima/services/loction.dart';
import 'package:clima/services/network.dart';

class WeatherModel {

  final apiKey = 'ce8ad28e-afab-11ed-b59d-0242ac130002-ce8ad306-afab-11ed-b59d-0242ac130002';
  final openWeatherMapURl = '"https://api.stormglass.io/v2/weather/point?lat=58.7984&lng=17.8081&params=windSpeed"-H"Authorization:ce8ad28e-afab-11ed-b59d-0242ac130002-ce8ad306-afab-11ed-b59d-0242ac130002"';
  Future<dynamic> getLocationWeather() async {
     var locationoo = location();
    await locationoo.getcurrentloction();


    Networkhelper networkHelper = Networkhelper(
        '$openWeatherMapURl?lat=${locationoo.latitude}&lon=${locationoo.longitude}&appid=$apiKey&units=metric');
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}