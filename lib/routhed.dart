import 'package:ecommerce_besinior/commons/widgets/BottomNavBar/bottom_nav_bar_view.dart';
import 'package:ecommerce_besinior/core/dependences.dart';
import 'package:ecommerce_besinior/features/Pages/Favorit/favorit_view.dart';
import 'package:ecommerce_besinior/features/Pages/Home/home_view.dart';
import 'package:ecommerce_besinior/features/Pages/IntroPage/intro_view.dart';
import 'package:ecommerce_besinior/features/Pages/Profile/profile_view.dart';
import 'package:ecommerce_besinior/features/Pages/Shop/shop_view.dart';
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
    name: '/bottonNavBar',
    page: () => BottomNVBScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/home',
    page: () => HomeScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/favorit',
    page: () => FavoritScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/shop',
    page: () => ShopScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: '/profile',
    page: () => ProfileScreen(),
    binding: AllBindings(),
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
