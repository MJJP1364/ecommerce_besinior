import 'package:ecommerce_besinior/core/dependency/dependences.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/intro_view.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  // GetPage(name: '/', page: () => SplashScreen(), binding: AllBindings()),
  GetPage(
    name: '/home',
    page: () => IntroScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 1000),
  ),
];
