import 'package:ecommerce_besinior/features/Pages/Favorit/favorit_view.dart';
import 'package:ecommerce_besinior/features/Pages/Home/home_view.dart';
import 'package:ecommerce_besinior/features/Pages/Profile/profile_view.dart';
import 'package:ecommerce_besinior/features/Pages/Shop/shop_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNVBcontroller extends GetxController {
  // final bottomNavCurrentIndex = RxInt(0);
  RxInt bottomNavCurrentIndex = 0.obs;
  final List<Widget> pages =
      [const HomeScreen(), FavoritScreen(), ShopScreen(), ProfileScreen()].obs;
}
