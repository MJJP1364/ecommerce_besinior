import 'package:ecommerce_besinior/features/Pages/IntroPage/widgets/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  final PageController pageController = PageController();
  final currentPage = 0.obs;

  final List<Widget> introPages = [
    IntroPage(
      title: 'Welcome to Besinior',
      description: 'Discover the best products at unbeatable prices.',
      image: 'assets/images/benz.png',
    ),
    IntroPage(
      title: 'Exclusive Offers',
      description: 'Get access to exclusive deals and discounts.',
      image: 'assets/images/bmw.png',
    ),
    IntroPage(
      title: 'Fast Delivery',
      description: 'Enjoy fast and reliable delivery to your doorstep.',
      image: 'assets/images/fiat.png',
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController.addListener(() {
      currentPage.value = pageController.page?.toInt() ?? 0;
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
