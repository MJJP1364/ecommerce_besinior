import 'package:delayed_widget/delayed_widget.dart';
import 'package:ecommerce_besinior/features/Pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  // final SplashController splashController = Get.put(SplashController());
  final SplashController splashController = Get.find();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: DelayedWidget(
                delayDuration: const Duration(milliseconds: 1000),
                animationDuration: Duration(milliseconds: 1000),
                animation: DelayedAnimations.SLIDE_FROM_BOTTOM,

                child: SvgPicture.asset(
                  'assets/images/splash_logo.svg',
                  width: size.width * 0.8,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                splashController.checkConnectivity1();
              },
              child: const Text(
                'ورود به برنامه',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
