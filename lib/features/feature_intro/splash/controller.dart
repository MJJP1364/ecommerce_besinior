import 'package:ecommerce_besinior/commons/utils/customSnackBar.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  onInit() {
    super.onInit();
    goToHome();
  }

  Future<void> goToHome() async {
    await Future.delayed(const Duration(seconds: 3));

    CustomSnackBar.show(title: 'خطا', message: 'به اینترنت متتصل نیستید');
  }
}
