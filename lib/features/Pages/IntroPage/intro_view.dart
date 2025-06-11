import 'package:delayed_widget/delayed_widget.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/intro_controller.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/widgets/get_start_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  final IntroController introController = Get.find();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Home Page'),
      //   backgroundColor: Colors.blue,
      // ),
      body: Stack(
        children: [
          Positioned(
            top: 0,

            child: Container(
              width: width,
              height: height * 0.6,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                ),
              ),
              // child: Center(child: Image.asset('assets/images/benz.png')),
            ),
          ),

          Positioned(
            bottom: height * 0.1,
            child: SizedBox(
              width: width,
              height: height * 0.9,
              child: PageView.builder(
                itemCount: introController.introPages.length,
                controller: introController.pageController,
                itemBuilder: (context, index) {
                  return introController.introPages[index];
                },
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.07,
            right: 20,
            child: DelayedWidget(
              delayDuration: const Duration(milliseconds: 500),
              animationDuration: const Duration(milliseconds: 1000),
              animation: DelayedAnimations.SLIDE_FROM_BOTTOM,

              child: GetStartBtn(
                text: 'Next',
                onPressed: () {
                  if (introController.pageController.page!.toInt() <
                      introController.introPages.length - 1) {
                    introController.pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                  //  else {
                  //   // Navigate to the next screen or perform an action
                  //   Get.toNamed('/nextScreen'); // Replace with your route
                  // }
                },
              ),
            ),
          ),
          Positioned(
            bottom: height * 0.07,
            left: 30,
            child: DelayedWidget(
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
          ),
        ],
      ),
    );
  }
}
