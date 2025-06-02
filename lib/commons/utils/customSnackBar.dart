import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSnackBar {
  static void show(String title, String message) {
    Get.snackbar(
      title,
      message,
      duration: const Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
    );
  }
}
