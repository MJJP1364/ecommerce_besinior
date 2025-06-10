import 'package:ecommerce_besinior/core/dependency/dependences.dart';
import 'package:ecommerce_besinior/features/Pages/HomePage/home_view.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  // GetPage(name: '/splash', page: () => SplashScreen(), binding: AllBindings()),
  GetPage(name: '/home', page: () => HomeScreen(), binding: AllBindings()),
];
