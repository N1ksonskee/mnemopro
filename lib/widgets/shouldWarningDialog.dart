import 'package:get/get.dart';
import 'package:flutter/material.dart';

showWarningDialog() => Get.dialog(AlertDialog(
  title: Text(
    'are_you_sure'.tr,
    style:  const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 22
    ),
  ),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
  backgroundColor: const Color(0xff1B1B1B),
  elevation: 0,
  actions: [
    TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
      onPressed: () => Get.back(result: false),
      child: Text(
        'cancel'.tr,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      )
    ),
    TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
      ),
      onPressed: () => Get.back(result: true),
      child: Text(
        'exit'.tr,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      )
    )
  ],
  content: Text(
    'progress_to_zero'.tr,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 18
    ),
  ),
));