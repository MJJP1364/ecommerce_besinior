import 'package:ecommerce_besinior/features/Pages/IntroPage/widgets/backGroundCurve.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/widgets/buildNVB.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/widgets/buildPageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/intro_controller.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final IntroController introController = Get.find();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background Curve
          BuildBackgroundCurve(size),

          // PageView
          BuildPageView(size, introController),

          // Navigation Buttons & Indicator
          BuildNavigationControls(size, introController),
        ],
      ),
    );
  }
}
