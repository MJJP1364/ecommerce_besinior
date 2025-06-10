import 'package:delayed_widget/delayed_widget.dart';
import 'package:ecommerce_besinior/features/Pages/HomePage/home_controller.dart';
import 'package:ecommerce_besinior/features/Pages/HomePage/widgets/get_start_btn.dart';
import 'package:ecommerce_besinior/features/Pages/HomePage/widgets/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController homeController = Get.find();

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
            width: width,
            height: height * 0.6,
            top: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                ),
              ),
              child: Center(child: Image.asset('assets/images/benz.png')),
            ),
          ),
          Positioned(
            bottom: height * 0.1,
            child: SizedBox(
              width: width,
              height: height * 0.25,
              child: PageView.builder(
                itemCount: introPages.length,
                controller: homeController.pageController,
                itemBuilder: (context, index) {
                  return introPages[index];
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
                  if (homeController.pageController.page!.toInt() <
                      introPages.length - 1) {
                    homeController.pageController.nextPage(
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
        ],
      ),
    );
  }
}
