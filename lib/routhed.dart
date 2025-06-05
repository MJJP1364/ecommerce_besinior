import 'package:ecommerce_besinior/core/dependency/dependences.dart';
import 'package:ecommerce_besinior/features/feature_intro/splash/splash_screen.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(name: '/splash', page: () => SplashScreen(), binding: AllBindings()),
];
