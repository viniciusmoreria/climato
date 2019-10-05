import 'package:climato/services/networking.dart';
import 'package:climato/services/location.dart';

//Insert your own APIKey in here :)
const apiKey = '1234';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return 'images/thunderstorm.png';
    } else if (condition < 400) {
      return 'images/rain.png';
    } else if (condition < 600) {
      return 'images/drizzle.png';
    } else if (condition < 700) {
      return 'images/snow.png';
    } else if (condition < 800) {
      return 'images/fog.png';
    } else if (condition == 800) {
      return 'images/clear.png';
    } else if (condition <= 804) {
      return 'images/clouds.png';
    } else {
      return '🤷‍';
    }
  }
}
