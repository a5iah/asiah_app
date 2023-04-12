import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/weather_info/bindings/weather_info_binding.dart';
import '../modules/weather_info/views/weather_info_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WEATHER_INFO;

  static final routes = [
    GetPage(
      name: _Paths.WEATHER_INFO,
      page: () => const WeatherInfoView(),
      binding: WeatherInfoBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
