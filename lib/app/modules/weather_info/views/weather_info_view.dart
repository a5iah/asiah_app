import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/weather_info_controller.dart';

class WeatherInfoView extends GetView<WeatherInfoController> {
  const WeatherInfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(''),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_rounded),
              color: Colors.black,
            )),
        body: Obx(
          () => controller.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(
                  color: Colors.amber,
                ))
              : Column(
                  children: [
                    CurrentWeather(
                        controller: controller,
                        location: "location",
                        icon: Icons.abc,
                        temp: 'temp',
                        weather: 'weather',
                        aqi: 'aqi'),
                    Info(
                        controller: controller,
                        humidity: 'humidity',
                        pressure: 'pressure',
                        realfeel: 'realfeel',
                        chance_of_rain: 'chance_of_rain'),
                  ],
                ),
        ));
  }
}

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({
    super.key,
    required this.location,
    required this.icon,
    required this.temp,
    required this.weather,
    required this.aqi,
    required this.controller,
  });
  final WeatherInfoController controller;

  final String location;
  final IconData icon;
  final String temp;
  final String weather;
  final String aqi;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 43,
          ),
          Text(
            // 'Malaysia',
            controller.weatherResponse!.location!.name!,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 30),
          Icon(
            icon,
            color: Colors.amberAccent[400],
            size: 70,
          ),
          SizedBox(height: 10),
          Text(
            '${controller.weatherResponse!.current!.tempC!}',
            style: TextStyle(
                fontSize: 80, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            "${controller.weatherResponse!.current!.condition!.text}",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
          ),
          SizedBox(height: 10),
          Text(
            "$aqi",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

TextStyle titleFont = const TextStyle(
    fontWeight: FontWeight.w500, fontSize: 18.0, color: Colors.black);
TextStyle infoFont = const TextStyle(
    fontWeight: FontWeight.w400, fontSize: 18.0, color: Colors.black);

class Info extends StatelessWidget {
  const Info({
    super.key,
    required this.humidity,
    required this.pressure,
    required this.realfeel,
    required this.chance_of_rain,
    required this.controller,
  });
  final WeatherInfoController controller;

  final String humidity;
  final String pressure;
  final String realfeel;
  final String chance_of_rain;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Humidity", style: titleFont),
                  SizedBox(
                    height: 18,
                  ),
                  Text("Pressure", style: titleFont),
                  SizedBox(
                    height: 18,
                  ),
                  Text("RealFeel", style: titleFont),
                  SizedBox(
                    height: 18,
                  ),
                  Text("Chance of rain", style: titleFont),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${controller.weatherResponse!.current!.humidity}",
                      style: infoFont),
                  SizedBox(
                    height: 18,
                  ),
                  Text("$pressure", style: infoFont),
                  SizedBox(
                    height: 18,
                  ),
                  Text("$realfeel", style: infoFont),
                  SizedBox(
                    height: 18,
                  ),
                  Text("$chance_of_rain", style: infoFont),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
