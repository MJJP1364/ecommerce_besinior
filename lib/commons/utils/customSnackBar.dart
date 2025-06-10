import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackBar {
  static void show({
    required String title,
    required String message,
    // required dynamic data,
  }) {
    Get.snackbar(
      title,
      message,
      titleText: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      messageText: Text(
        message,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),

      icon: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: const Icon(Icons.error, color: Colors.red, size: 40),
      ),
      duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
    );
  }
}
