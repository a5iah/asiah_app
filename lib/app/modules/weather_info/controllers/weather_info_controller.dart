import 'dart:convert';

import 'package:asiah_app/app/data/model/weather.dart';
import 'package:asiah_app/app/data/repositories/weather_repo.dart';
import 'package:get/get.dart';

class WeatherInfoController extends GetxController {
  //TODO: Implement WeatherInfoController
  final WeatherRepo weatherRepo;

  WeatherInfoController(this.weatherRepo);

  RxBool isLoading = false.obs;

  WeatherResponse? weatherResponse;

  @override
  void onInit() {
    getWeather();
    super.onInit();
  }

  getWeather() async {
    isLoading(true);
    var response = await weatherRepo.getWeather();

    isLoading(false);
    // print(response);

    response as WeatherResponse;
    weatherResponse = response;

    print('response :: ${jsonEncode(response)}');
  }
}
