import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = "883c5e9b25be849c82b8f4860c5a285e";
const OpenWeatherUrl = "https://api.openweathermap.org/data/2.5/weather";

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location position = Location();
    await position.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(Uri.parse(
        '$OpenWeatherUrl?lat=${position.getLatitude}&lon=${position.getLongitude}&appid=$apiKey&units=metric'));

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  Future<dynamic> getCityWeather(String cityName) async {
    var url = "$OpenWeatherUrl?q=$cityName&appid=$apiKey&units=metric";
    NetworkHelper networkHelper = NetworkHelper(Uri.parse(url));
    var weatherData = await networkHelper.getData();
    return weatherData;
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
