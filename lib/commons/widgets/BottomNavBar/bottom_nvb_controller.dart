import 'package:ecommerce_besinior/features/Pages/Category/category_view.dart';
import 'package:ecommerce_besinior/features/Pages/Home/home_view.dart';
import 'package:ecommerce_besinior/features/Pages/Profile/profile_view.dart';
import 'package:ecommerce_besinior/features/Pages/Shop/shop_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNVBcontroller extends GetxController {
  // final bottomNavCurrentIndex = RxInt(0);
  RxInt bottomNavCurrentIndex = 0.obs;
  final List<Widget> pages =
      [const HomeScreen(), CategoryScreen(), ProfileScreen(), ShopScreen()].obs;
}

// class BottomNVBcontroller extends GetxController {
//   var bottomNavCurrentIndex = 0.obs;
//   late PageController pageController;

//   List<Widget> pages = [
//     HomeScreen(),
//     CategoryScreen(),
//     ProfileScreen(),
//     ShopScreen(),
//   ];

//   void changeTabIndex(int index) {
//     bottomNavCurrentIndex.value = index;
//   }

//   void setPageController(PageController controller) {
//     pageController = controller;
//   }
// }
