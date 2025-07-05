import 'package:delayed_widget/delayed_widget.dart';
import 'package:ecommerce_besinior/commons/widgets/BottomNavBar/bottom_nav_widget.dart';
import 'package:ecommerce_besinior/commons/widgets/BottomNavBar/bottom_nvb_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNVBScreen extends StatelessWidget {
  BottomNVBScreen({super.key});

  final BottomNVBcontroller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: PageController(initialPage: 0),
        onPageChanged: (index) {
          controller.bottomNavCurrentIndex.value = index;
        },
        itemBuilder: (context, index) {
          return DelayedWidget(
            delayDuration: const Duration(milliseconds: 500),
            animationDuration: const Duration(milliseconds: 800),
            animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
            // animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
            child: Obx(
              () => controller.pages[controller.bottomNavCurrentIndex.value],
            ),
          );
        },
      ),

      bottomNavigationBar: BottomNavBar(controller: controller),
    );
  }
}
