

// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';


Widget BuildPageView(Size size, dynamic introController) {
  return Positioned(
    bottom: size.height * 0.1,
    child: SizedBox(
      width: size.width,
      height: size.height * 0.9,
      child: PageView.builder(
        itemCount: introController.introPages.length,
        controller: introController.pageController,
        itemBuilder: (context, index) => introController.introPages[index],
      ),
    ),
  );
}
