import 'dart:convert';
import 'dart:io';

import 'package:asiah_app/app/data/model/weather.dart';
import 'package:get/get.dart';

class WeatherProvider extends GetConnect{
  Map<String, String> defaultHeader = {};
  @override
  void onInit() {
    httpClient.baseUrl = "http://api.weatherapi.com/v1/current.json?key=2b85a1886d9a4b309c924807231104&";
    super.onInit();
  }

  getWeather() async{

  var response = await httpClient.get(
    "&q=MALAYSIA",
    headers: {"Content-Type":"application/json"}
    );

 
  if (response.status.isOk){
    print('masukk');
    WeatherResponse weatherResponse = WeatherResponse.fromJson(response.body);


    print(jsonEncode(weatherResponse));
    return weatherResponse ; 
  }
  }
}