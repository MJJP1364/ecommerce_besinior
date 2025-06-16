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
        height: 90,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildNavItem(icon: Icons.home, lable: 'A', index: 0),
              BuildNavItem(icon: Icons.favorite, lable: 'B', index: 1),
              BuildNavItem(icon: Icons.shopping_cart, lable: 'C', index: 2),
              BuildNavItem(icon: Icons.person_outline, lable: 'D', index: 3),
            ],
          ),
        ),
      ),
    );
  }
}
