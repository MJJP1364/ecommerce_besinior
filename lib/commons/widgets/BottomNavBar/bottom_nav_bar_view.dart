import 'package:delayed_widget/delayed_widget.dart';
import 'package:ecommerce_besinior/commons/widgets/BottomNavBar/bottom_nvb_controller.dart';
import 'package:ecommerce_besinior/commons/widgets/BottomNavBar/buildBNV.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNVBScreen extends StatelessWidget {
  BottomNVBScreen({super.key});

  final BottomNVBcontroller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(() => controller.pages[controller.bottomNavCurrentIndex.value]),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DelayedWidget(
                delayDuration: Duration(milliseconds: 500),
                animationDuration: Duration(milliseconds: 500),
                animation: DelayedAnimations.SLIDE_FROM_LEFT,
                child: BuildNavItem(
                  icon: Icons.home,
                  lable: 'HOME',
                  index: 0,
                  onTap: () {},
                ),
              ),
              DelayedWidget(
                delayDuration: Duration(milliseconds: 1000),
                animationDuration: Duration(milliseconds: 500),
                animation: DelayedAnimations.SLIDE_FROM_LEFT,
                child: BuildNavItem(
                  icon: Icons.category,
                  lable: 'Category',
                  index: 1,
                  onTap: () {},
                ),
              ),
              DelayedWidget(
                delayDuration: Duration(milliseconds: 1500),
                animationDuration: Duration(milliseconds: 500),
                animation: DelayedAnimations.SLIDE_FROM_LEFT,
                child: BuildNavItem(
                  icon: Icons.shopping_cart,
                  lable: 'Shop',
                  index: 2,
                  onTap: () {},
                ),
              ),
              DelayedWidget(
                delayDuration: Duration(milliseconds: 2000),
                animationDuration: Duration(milliseconds: 500),
                animation: DelayedAnimations.SLIDE_FROM_LEFT,
                child: BuildNavItem(
                  icon: Icons.person_outline,
                  lable: 'Profile',
                  index: 3,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
