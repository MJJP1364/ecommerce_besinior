import 'package:ecommerce_besinior/core/dependency/dependences.dart';
import 'package:ecommerce_besinior/features/Pages/HomePage/home_view.dart';
import 'package:get/get.dart';

// class AppRoutes {
//   static const String splash = '/';
//   static const String home = '/home';
// }

List<GetPage> routes = [
  // GetPage(name: '/', page: () => SplashScreen(), binding: AllBindings()),
  GetPage(
    name: '/home',
    page: () => HomeScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 1000),
  ),
];
