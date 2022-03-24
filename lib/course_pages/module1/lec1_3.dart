import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'lec1_4.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec1_3 extends StatelessWidget {
  const Lec1_3({Key? key, required this.title}) : super(key: key);

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

  Widget _buildBody() =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'lec1_3_1'.tr,
            style: Get.textTheme.bodyText1
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_3_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_3_3'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_3_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_3_5'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec1_3_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_3_7'.tr),
                TextSpan(text: 'lec1_3_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_3_9'.tr),
                TextSpan(text: 'lec1_3_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_3_11'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec1_3_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec1_3_13'.tr,
          style: Get.textTheme.bodyText1
        ),
        sizedBoxHigh(),
        Text(
          'lec1_3_14'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_3_15'.tr,
          style: Get.textTheme.bodyText2,
        ),
        sizedBoxLow(),
        Text(
          'lec1_3_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_3_17'.tr,
          style: Get.textTheme.bodyText2,
        ),
        sizedBoxLow(),
        Text(
          'lec1_3_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_3_19'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_3_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        SvgPicture.asset('lec1_3_svg1'.tr),
        sizedBoxLow(),
        Text(
          'lec1_3_21'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec1_3_22'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec1_4');
              Get.off(Lec1_4(title: Headers.theoryHeaders['data'.tr]![0][3]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}