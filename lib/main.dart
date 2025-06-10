import 'package:ecommerce_besinior/config/Themes/my_theme.dart';
import 'package:ecommerce_besinior/config/Themes/theme_Controller.dart';
import 'package:ecommerce_besinior/core/dependency/dependences.dart';
import 'package:ecommerce_besinior/features/Pages/splash/splash_controller.dart';
import 'package:ecommerce_besinior/features/Pages/splash/splash_screen.dart';
import 'package:ecommerce_besinior/routhed.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  );
  runApp(const MyApp());

  Get.put(SplashController(), permanent: true);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eccomerce Besinior',
      initialBinding: AllBindings(),

      // Theme settings
      themeMode: ThemeController().theme,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,


       // initialRoute: AppRoutes.splash,
      getPages: routes,
      home: SplashScreen(),

      // home: ,
    );
  }
}
