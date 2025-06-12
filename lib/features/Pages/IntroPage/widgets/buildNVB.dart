import 'package:delayed_widget/delayed_widget.dart';
import 'package:ecommerce_besinior/core/prefs_operators.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/intro_controller.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/widgets/get_start_btn.dart';
import 'package:ecommerce_besinior/locator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// فرض می‌کنیم IntroController کلاسی هست که currentPage رو بصورت RxInt ذخیره می‌کنه
// ignore: non_constant_identifier_names
Widget BuildNavigationControls(Size size, IntroController introController) {
  return Positioned(
    bottom: size.height * 0.07,
    left: 0,
    right: 0,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Dot Indicator
          DelayedWidget(
            delayDuration: const Duration(milliseconds: 500),
            animationDuration: const Duration(milliseconds: 1000),
            animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
            child: SmoothPageIndicator(
              controller: introController.pageController,
              effect: ExpandingDotsEffect(
                dotWidth: 10.0,
                dotHeight: 10.0,
                spacing: 8.0,
                activeDotColor: Colors.blue.shade900,
                dotColor: Colors.grey.shade300,
              ),
              count: introController.introPages.length,
            ),
          ),

          // Next Button
          DelayedWidget(
            delayDuration: const Duration(milliseconds: 500),
            animationDuration: const Duration(milliseconds: 1000),
            animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
            child: Obx(() {
              final isLastPage =
                  introController.currentPage >=
                  introController.introPages.length - 1;

              return GetStartBtn(
                text: isLastPage ? 'Get Started' : 'Next',
                onPressed: () {
                  if (isLastPage) {
                    final PrefsOperators prefsOperators =
                        locator<PrefsOperators>();
                    prefsOperators.changeIntroState();
                    Get.offAllNamed('/home');
                  } else {
                    introController.pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
              );
            }),
          ),
        ],
      ),
    ),
  );
}
