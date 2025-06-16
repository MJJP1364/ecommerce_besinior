import 'package:ecommerce_besinior/commons/widgets/BottomNavBar/bottom_nvb_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BuildNavItem extends StatelessWidget {
  final IconData icon;
  final String lable;
  final int index;
  // final VoidCallback? onTap;

  BuildNavItem({
    super.key,
    required this.icon,
    required this.lable,
    required this.index,
    // this.onTap,
  });
  final BottomNVBcontroller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          controller.bottomNavCurrentIndex.value = index;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 28,
              color:
                  controller.bottomNavCurrentIndex.value == index
                      ? Colors.red
                      : Colors.grey,
            ),
            const SizedBox(height: 3),
            CircleAvatar(
              radius: 3,
              // ignore: unrelated_type_equality_checks
              backgroundColor:
                  controller.bottomNavCurrentIndex == index
                      ? Colors.red
                      : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
