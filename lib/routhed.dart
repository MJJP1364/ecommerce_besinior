import 'package:ecommerce_besinior/core/dependences.dart';
import 'package:ecommerce_besinior/features/Pages/Home/home_view.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/intro_view.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  // GetPage(name: '/', page: () => SplashScreen(), binding: AllBindings()),
  GetPage(
    name: '/intro',
    page: () => IntroScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 1000),
  ),
  GetPage(
    name: '/home',
    page: () => HomeScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
