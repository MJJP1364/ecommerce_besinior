import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget BuildBackgroundCurve(Size size) {
  return Positioned(
    top: 0,
    child: Container(
      width: size.width,
      height: size.height * 0.6,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(150)),
      ),
    ),
  );
}
