import 'package:asiah_app/app/data/provider/weather_provider.dart';
import 'package:get/get.dart';

class WeatherRepo {
  final WeatherProvider _weatherProvider = Get.find<WeatherProvider>();


  getWeather() => _weatherProvider.getWeather();
}