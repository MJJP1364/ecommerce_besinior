import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    textTheme: const TextTheme(
      // bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(
        fontFamily: 'Vazir',
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      // bodySmall: TextStyle(color: Colors.white54),
      // titleLarge: TextStyle(color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold,fontFamily: 'Vazir'),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Vazir',
      ),
      // titleSmall: TextStyle(color: Colors.amber, fontSize: 16, fontWeight: FontWeight.w500,fontFamily: 'Vazir'),
    ),

    // brightness: Brightness.dark,
    // useMaterial3: true,
    // highlightColor: Colors.indigo,
    // canvasColor: Colors.grey,
    // unselectedWidgetColor: Colors.white70,
    // primaryColorLight: Color.fromRGBO(252, 178, 98, 1),
    // scaffoldBackgroundColor: Colors.grey.shade900,
    // primaryColor: Colors.amber.shade800,
    // indicatorColor: Colors.amber,
    // secondaryHeaderColor: Color.fromRGBO(178, 106, 2, 1),
    // iconTheme: IconThemeData(color: Colors.amber.shade800),
  );

  static final lightTheme = ThemeData(
    textTheme: const TextTheme(
      // bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(
        fontFamily: 'Vazir',
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      // bodySmall: TextStyle(color: Colors.black54),
      // titleLarge: TextStyle(color: Colors.amber, fontSize: 24, fontWeight: FontWeight.bold,fontFamily: 'Vazir'),
      titleMedium: TextStyle(
        color: Colors.amber,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Vazir',
      ),
      // titleSmall: TextStyle(color: Colors.amber, fontSize: 16, fontWeight: FontWeight.w500,fontFamily: 'Vazir'),
    ),
    // brightness: Brightness.light,
    // useMaterial3: true,
    // highlightColor: Colors.indigo,
    // canvasColor: Colors.white,
    // unselectedWidgetColor: Colors.black54,
    // primaryColorLight: Color.fromRGBO(252, 178, 98, 1),
    // scaffoldBackgroundColor: Colors.white,
    // primaryColor: Colors.amber.shade800,
    // indicatorColor: Colors.amber,
    // secondaryHeaderColor: Color.fromRGBO(178, 106, 2, 1),
    // iconTheme: IconThemeData(color: Colors.amber.shade800),
  );
}
