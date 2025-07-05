

import 'package:delayed_widget/delayed_widget.dart';
import 'package:ecommerce_besinior/commons/widgets/BottomNavBar/bottom_nvb_controller.dart';
import 'package:ecommerce_besinior/commons/widgets/BottomNavBar/buildBNV.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.controller,
  });

  final BottomNVBcontroller controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DelayedWidget(
              delayDuration: const Duration(milliseconds: 500),
              animationDuration: const Duration(milliseconds: 800),
              animation: DelayedAnimations.SLIDE_FROM_LEFT,
              child: BuildNavItem(
                icon:
                    controller.bottomNavCurrentIndex.value == 0
                        ? Icons.home_filled
                        : Icons.home_sharp,
                lable: 'Home',
                index: 0,
                onTap: () => controller.bottomNavCurrentIndex.value = 0,
              ),
            ),
            DelayedWidget(
              delayDuration: const Duration(milliseconds: 900),
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
              delayDuration: const Duration(milliseconds: 1300),
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
              delayDuration: const Duration(milliseconds: 1700),
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
    );
  }
}
