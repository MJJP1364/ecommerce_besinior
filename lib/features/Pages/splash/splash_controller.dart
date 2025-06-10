import 'dart:io';
import 'package:ecommerce_besinior/commons/utils/customSnackBar.dart';
import 'package:ecommerce_besinior/features/Pages/HomePage/home_view.dart';
import 'package:ecommerce_besinior/core/dependency/dependences.dart';
import 'package:get/get.dart';
// import 'package:connectivity_plus/connectivity_plus.dart'; // Uncomment if you want to use connectivity package

class SplashController extends GetxController {
  @override
  onInit() {
    super.onInit();
    checkInternetConnection();
  }

  Future<void> checkInternetConnection() async {
    // Simulate a network check
    await Future.delayed(const Duration(seconds: 3));
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        //Internet connection is available
        Get.offAll(
          () => HomeScreen(),
          transition: Transition.fadeIn,
          duration: const Duration(milliseconds: 500),
          binding: AllBindings(),
        );

        /// Uncomment the following lines if you want to check specific connectivity types

        // final List<ConnectivityResult> connectivityResult =
        //     await (Connectivity().checkConnectivity());

        // // This condition is for demo purposes only to explain every connection type.
        // // Use conditions which work for your requirements.
        // if (connectivityResult.contains(ConnectivityResult.mobile)) {
        //   // Mobile network available.
        // } else if (connectivityResult.contains(ConnectivityResult.wifi)) {
        //   // Wi-fi is available.
        //   // Note for Android:
        //   // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
        // } else if (connectivityResult.contains(ConnectivityResult.ethernet)) {
        //   // Ethernet connection available.
        // } else if (connectivityResult.contains(ConnectivityResult.vpn)) {
        //   // Vpn connection active.
        //   // Note for iOS and macOS:
        //   // There is no separate network interface type for [vpn].
        //   // It returns [other] on any device (also simulator)
        // } else if (connectivityResult.contains(ConnectivityResult.bluetooth)) {
        //   // Bluetooth connection available.
        // } else if (connectivityResult.contains(ConnectivityResult.other)) {
        //   // Connected to a network which is not in the above mentioned networks.
        // } else if (connectivityResult.contains(ConnectivityResult.none)) {
        //   // No available network types
        // }
      }
    } catch (e) {
      // No internet connection
      CustomSnackBar.show(title: 'خطا', message: 'به اینترنت متصل نیستید');

      // Get.offNamed('/splash');
    }
  }
}
