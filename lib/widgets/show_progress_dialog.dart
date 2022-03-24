import 'package:flutter/material.dart';
import 'package:get/get.dart';

showProgressDialog(int index) async => await Get.dialog(
    Dialog(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff1B1B1B),
              borderRadius: BorderRadius.circular(18),
            ),
            padding: const EdgeInsets.all(20),
            child: Text(
              index == 0 ? 'read_before_learn1'.tr : 'read_before_learn2'.tr,
              style:  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              textAlign: TextAlign.center,
            )
        )
    )
);