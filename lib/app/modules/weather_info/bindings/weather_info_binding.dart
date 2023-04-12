import 'package:asiah_app/app/data/provider/weather_provider.dart';
import 'package:get/get.dart';

import '../../../data/repositories/weather_repo.dart';
import '../controllers/weather_info_controller.dart';

class WeatherInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(WeatherProvider());
  Get.put(WeatherInfoController(WeatherRepo()));
    // Get.lazyPut<WeatherInfoController>(
    //   () => WeatherInfoController(WeatherRepo()),
    // );
  }
}
