import 'package:ecommerce_besinior/features/Pages/Home/home_controller.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/intro_controller.dart';

import 'package:get/get.dart';

class AllBindings implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
    Get.lazyPut<IntroController>(() => IntroController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}
