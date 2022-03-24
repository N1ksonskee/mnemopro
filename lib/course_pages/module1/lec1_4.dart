import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'lec1_5.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec1_4 extends StatelessWidget {
  const Lec1_4({Key? key, required this.title}) : super(key: key);

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
          'lec1_4_1'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_4_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_4_3'.tr, ),
                TextSpan(text: 'lec1_4_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_4_5'.tr, ),
                TextSpan(text: 'lec1_4_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_4_7'.tr, ),
                TextSpan(text: 'lec1_4_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_4_9'.tr, ),
              ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/channels.svg', height: 300,)),
        sizedBoxHigh(),
        Text(
          'lec1_4_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/visual_bigger.svg', height: 250,)),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_4_11'.tr),
              TextSpan(text: 'lec1_4_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec1_4_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec1_4_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_4_15'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_4_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/articles-vs-films.svg', height: 250,)),
        sizedBoxHigh(),
        Text(
          'lec1_4_17'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_4_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec1_4_19'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec1_4_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_4_21'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_4_22'.tr),
                TextSpan(text: 'lec1_4_23'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_4_24'.tr),
                TextSpan(text: 'lec1_4_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec1_4_26'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_4_27'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec1_4_28'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec1_4_29'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/ps-gpu.svg', height: 150,)),
        sizedBoxLow(),
        Text(
          'lec1_4_30'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec1_5');
              Get.off(Lec1_5(title: Headers.theoryHeaders['data'.tr]![0][4]), transition: Transition.rightToLeft);
            }
        )
      ]
    );
}