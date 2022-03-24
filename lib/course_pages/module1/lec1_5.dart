import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/headers.dart';
import '../../widgets/close_icon_button.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_expansion_tile_lec.dart';
import 'lec1_6.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';


class Lec1_5 extends StatelessWidget {
  const Lec1_5({Key? key, required this.title}) : super(key: key);

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
        'lec1_5_1'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_5_2'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_5_3'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_5_4'.tr,
        style: Get.textTheme.bodyText1!.copyWith(color: kgrey, fontWeight: FontWeight.bold),
      ),
      sizedBoxLow(),
      Text(
        'lec1_5_5'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_5_6'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_5_7'.tr,
        style: Get.textTheme.bodyText1!.copyWith(color: kgrey, fontWeight: FontWeight.bold),
      ),
      sizedBoxLow(),
      Text(
        'lec1_5_8'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_5_9'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_5_10'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_5_11'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_5_12'.tr),
            TextSpan(text: 'lec1_5_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_5_14'.tr),
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_5_15'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      CustomExpansionTileLec(
        widgets: [
          Text(
            'lec1_5_16'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
        ],
        title: 'lec1_5_17'.tr,
        subtitle: 'additional'.tr,
        color: kblue,
        subtitleColor: kblueDark
      ),
      sizedBoxHigh(),
      Text(
        'lec1_5_18'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_5_19'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_5_20'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_5_21'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kred,
          handler: () {
            AuthService().upgradeData('lec1_6');
            Get.off(Lec1_6(title: Headers.theoryHeaders['data'.tr]![0][5]), transition: Transition.rightToLeft);
          }
      )
    ]
  );
}