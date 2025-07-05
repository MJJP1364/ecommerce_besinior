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
      body: DelayedWidget(
        delayDuration: const Duration(milliseconds: 500),
        animationDuration: const Duration(milliseconds: 800),
        animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
        // animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
        // animation: DelayedAnimations.SLIDE_FROM_RIGHT,
        child: Obx(
          () => controller.pages[controller.bottomNavCurrentIndex.value],
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          // border: Border.all(color: Colors.blue),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -2), // changes position of shadow
            ),
          ],
        ),
        height: 70,
        //  color: Colors.grey.withValues(alpha: 0.2),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildNavItem(
                icon:
                    controller.bottomNavCurrentIndex.value == 0
                        ? Icons.home_filled
                        : Icons.home_sharp,
                lable: 'Home',
                index: 0,
                onTap: () => controller.bottomNavCurrentIndex.value = 0,
                // Use home_filled if index is 0, otherwise use home
              ),
              DelayedWidget(
                delayDuration: const Duration(milliseconds: 500),
                animationDuration: const Duration(milliseconds: 800),
                animation: DelayedAnimations.SLIDE_FROM_LEFT,
                child: BuildNavItem(
                  icon:
                      controller.bottomNavCurrentIndex.value == 1
                          ? Icons.category_rounded
                          : Icons.category_sharp,
                  lable: 'Category',
                  index: 1,
                  onTap: () => controller.bottomNavCurrentIndex.value = 1,
                ),
              ),
              DelayedWidget(
                delayDuration: const Duration(milliseconds: 500),
                animationDuration: const Duration(milliseconds: 800),
                animation: DelayedAnimations.SLIDE_FROM_LEFT,
                child: BuildNavItem(
                  icon:
                      controller.bottomNavCurrentIndex.value == 2
                          ? Icons.person_2_rounded
                          : Icons.person_sharp,
                  lable: 'Profile',
                  index: 2,
                  onTap: () => controller.bottomNavCurrentIndex.value = 2,
                ),
              ),
              DelayedWidget(
                delayDuration: const Duration(milliseconds: 500),
                animationDuration: const Duration(milliseconds: 800),
                animation: DelayedAnimations.SLIDE_FROM_LEFT,
                child: BuildNavItem(
                  icon:
                      controller.bottomNavCurrentIndex.value == 3
                          ? Icons.shopping_cart_rounded
                          : Icons.shopping_cart_outlined,
                  lable: 'Shopping',
                  index: 3,
                  onTap: () => controller.bottomNavCurrentIndex.value = 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
