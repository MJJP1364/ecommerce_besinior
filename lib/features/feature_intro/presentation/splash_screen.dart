import 'package:delayed_widget/delayed_widget.dart';
import 'package:ecommerce_besinior/commons/utils/customSnackBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToHome();
  }

  Future<void> goToHome() async {
    await Future.delayed(const Duration(seconds: 3));

    CustomSnackBar.show('خطا', 'به اینترنت متصل نیستید');
  }

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
            Expanded(
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

            // const Text(
            //   'به اینترنت متصل نیستید',
            //   style: TextStyle(
            //     fontSize: 25,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.red,
            //   ),
            // ),
            // SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
