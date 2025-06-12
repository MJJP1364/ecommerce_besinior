import 'package:dio/dio.dart';
import 'package:ecommerce_besinior/core/prefs_operators.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt locator = GetIt.instance;

Future<void> initLocator() async {
  // Register your services and controllers here
  // Example:
  // locator.registerLazySingleton<Dio>(() => Dio());
  locator.registerSingleton<Dio>(Dio());
  //-----------------------------------------------------------------------------------
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(sharedPreferences);
  locator.registerSingleton<PrefsOperators>(PrefsOperators());

  // locator.registerFactory<SomeController>(() => SomeController());

  // Add your service/controller registrations below
}
