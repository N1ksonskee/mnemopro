import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

import 'lec1_7.dart';

class Lec1_6 extends StatelessWidget {
  const Lec1_6({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kredBG,
      appBar: AppBar(
        backgroundColor: kred,
        title: Text(
            title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'lec1_6_1'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_6_2'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_6_3'.tr),
            TextSpan(text: 'lec1_6_4'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_6_5'.tr),
            TextSpan(text: 'lec1_6_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_6_7'.tr),
          ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_6_8'.tr),
              TextSpan(text: 'lec1_6_9'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_6_10'.tr),
              TextSpan(text: 'lec1_6_11'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_6_12'.tr),
            ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_6_13'.tr),
              TextSpan(text: 'lec1_6_14'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_6_15'.tr),
              TextSpan(text: 'lec1_6_16'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_6_17'.tr),
              TextSpan(text: 'lec1_6_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/eye-direction2.svg',height: 300,)),
      sizedBoxHigh(),
      Text(
        'example'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_6_19'.tr),
              TextSpan(text: 'lec1_6_20'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec1_6_21'.tr),
              TextSpan(text: 'lec1_6_22'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_6_23'.tr),
            ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_6_24'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_6_25'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_6_26'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_6_27'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_6_28'.tr),
            TextSpan(text: 'lec1_6_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
          ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec1_6_30'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_6_31'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/eye-direction-percentage.svg', height: 250,)),
      sizedBoxHigh(),
      Text(
        'lec1_6_32'.tr,
        style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
      ),
      sizedBoxLow(),
      Text(
        'lec1_6_33'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kred,
          handler: () {
            AuthService().upgradeData('lec1_7');
            Get.off(Lec1_7(title: Headers.theoryHeaders['data'.tr]![0][6]), transition: Transition.rightToLeft);
          }
      ),
    ]
  );
}