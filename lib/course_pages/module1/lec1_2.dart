import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'lec1_3.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';


class Lec1_2 extends StatelessWidget {
  const Lec1_2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kredBG,
      appBar: AppBar(
        backgroundColor: kred,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
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
              TextSpan(text: 'lec1_2_1'.tr),
              TextSpan(text: 'lec1_2_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_3'.tr, ),
              TextSpan(text: 'lec1_2_4'.tr,style: const TextStyle(fontWeight: FontWeight.bold) ),
              TextSpan(text: 'lec1_2_5'.tr),
            ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_2_6'.tr,
        style: Get.textTheme.bodyText1
      ),
      sizedBoxLow(),
      Text(
        'lec1_2_7'.tr,
        style: Get.textTheme.bodyText1
      ),
      sizedBoxLow(),
      Text(
        'lec1_2_8'.tr,
          style: Get.textTheme.bodyText1
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_2_9'.tr),
              TextSpan(text: 'lec1_2_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_11'.tr, ),
              TextSpan(text: 'lec1_2_12'.tr,style: const TextStyle(fontWeight: FontWeight.bold) ),
            ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_2_13'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_2_14'.tr),
              TextSpan(text: 'lec1_2_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_16'.tr),
              TextSpan(text: 'lec1_2_17'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_18'.tr, ),
              TextSpan(text: 'lec1_2_19'.tr,style: const TextStyle(fontWeight: FontWeight.bold) ),
              TextSpan(text: 'lec1_2_20'.tr)
            ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec1_2_21'.tr,
        style: const TextStyle(fontWeight: FontWeight.bold,color: kblue, fontSize: 20)
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_2_22'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_23'.tr),
              TextSpan(text: 'lec1_2_24'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_25'.tr, ),
            ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_2_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_27'.tr),
              TextSpan(text: 'lec1_2_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_29'.tr, ),
            ]
        ),
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec1_2_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_2_31'.tr, ),
            ]
        ),
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('lec1_2_svg1'.tr, height: 250,)),
      sizedBoxHigh(),
      Text(
        'lec1_2_32'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_2_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_2_34'.tr),
          ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
        style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_2_35'.tr),
            TextSpan(text: 'lec1_2_36'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_2_37'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_2_38'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/brain_graphic.svg', height: 300,)),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_2_39'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_2_40'.tr)
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_2_41'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_2_42'.tr,
        style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
      ),
      sizedBoxLow(),
      Text(
        'lec1_2_43'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kred,
          handler: () {
            AuthService().upgradeData('lec1_3');
            Get.off(Lec1_3(title: Headers.theoryHeaders['data'.tr]![0][2]), transition: Transition.rightToLeft);
          }
      )
    ]
  );
}