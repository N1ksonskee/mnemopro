import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/pages/user_page.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

import '../constants/colors.dart';

Future<String> showPremDialog() async => await Get.dialog(
  Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff1B1B1B),
            borderRadius: BorderRadius.circular(18),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              RichText(
                  text: TextSpan(
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      children: [
                        TextSpan(text: 'to_open_this_prem'.tr),
                        TextSpan(text: 'premium_account'.tr, style: const TextStyle(color: kred)),
                      ]
                  )
              ),
              sizedBoxHigh(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(title: 'buy'.tr, color: kred, handler: () {}),
                  const SizedBox(height: 8,),
                  TextButton(onPressed: () {
                    Get.back();
                    Get.to(const PremPage(), transition: Transition.leftToRight);
                  }, child: Text('more'.tr, style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),)),

                ],
              )
            ],
          )
      )
  ),
);