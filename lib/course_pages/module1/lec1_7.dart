import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'lec1_8.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec1_7 extends StatelessWidget {
  const Lec1_7({Key? key, required this.title}) : super(key: key);
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
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_7_1'.tr),
            TextSpan(text: 'lec1_7_2'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_7_3'.tr),
            TextSpan(text: 'lec1_7_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
          ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec1_7_5'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_7_6'.tr),
              TextSpan(text: 'lec1_7_7'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_7_8'.tr),
              TextSpan(text: 'lec1_7_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_7_10'.tr),
              TextSpan(text: 'lec1_7_11'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'example'.tr,
        style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      sizedBoxLow(),
      Text(
        'lec1_7_12'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_7_13'.tr,
        style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      sizedBoxLow(),
      Text(
        'lec1_7_14'.tr,
        style: Get.textTheme.bodyText1!.copyWith(height: 1.5),
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/accurate-inf.svg', height: 250)),
      sizedBoxHigh(),
      Text(
        'lec1_7_15'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_7_16'.tr),
              TextSpan(text: 'lec1_7_17'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_7_18'.tr),
              TextSpan(text: 'lec1_7_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_7_20'.tr,
        style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      sizedBoxLow(),
      Text(
        'lec1_7_21'.tr,
        style: Get.textTheme.bodyText1!.copyWith(height: 1.5),
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/approximate-inf.svg')),
      sizedBoxHigh(),
      Text(
        'lec1_7_22'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_7_23'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kred,
          handler: () {
            AuthService().upgradeData('lec1_8');
            Get.off(Lec1_8(title: Headers.theoryHeaders['data'.tr]![0][7]), transition: Transition.rightToLeft);
          }
      ),
    ]
  );
}