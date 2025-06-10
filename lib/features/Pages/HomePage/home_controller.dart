import 'package:ecommerce_besinior/features/Pages/HomePage/widgets/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final PageController pageController = PageController();

  final List<Widget> introPages = [
    IntroPage(
      title: 'Welcome to Besinior',
      description: 'Discover the best products at unbeatable prices.',
    ),
    IntroPage(
      title: 'Exclusive Offers',
      description: 'Get access to exclusive deals and discounts.',
    ),
    IntroPage(
      title: 'Fast Delivery',
      description: 'Enjoy fast and reliable delivery to your doorstep.',
    ),
  ];
}
