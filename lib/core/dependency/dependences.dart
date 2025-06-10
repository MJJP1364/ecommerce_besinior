import 'package:ecommerce_besinior/features/Pages/HomePage/home_controller.dart';

import 'package:get/get.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}
