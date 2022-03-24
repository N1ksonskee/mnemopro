import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

import 'lec1_2.dart';

class Lec1_1 extends StatelessWidget {
  const Lec1_1({Key? key, required this.title}) : super(key: key);
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
      Row(
        children: [
          Expanded(child: SvgPicture.asset('assets/purpose.svg'), flex: 2,),
          Expanded(
            flex: 3,
            child: RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: [
                  TextSpan(text: 'lec1_1_1'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_1_2'.tr),
                  TextSpan(text: 'lec1_1_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_1_4'.tr),
                ]
              ),
            ),
          )
        ],
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
          text: 'lec1_1_5'.tr,
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(
                text: 'lec1_1_6'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'example'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_1_7'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: SvgPicture.asset('assets/100.svg'), flex: 1,),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: Text(
              'lec1_1_8'.tr,
              style: Get.textTheme.bodyText1
            )
          )
        ],
      ),
      sizedBoxLow(),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: SvgPicture.asset('assets/long-time.svg'), flex: 1,),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: Text(
              'lec1_1_9'.tr,
              style:  Get.textTheme.bodyText1
            )
          )
        ],
      ),
      sizedBoxLow(),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child: SvgPicture.asset('assets/loud_speaker.svg'), flex: 1,),
          const SizedBox(width: 16),
          Expanded(
            flex: 3,
            child: Text(
              'lec1_1_10'.tr,
              style: Get.textTheme.bodyText1
            )
          )
        ],
      ),
      sizedBoxHigh(),
      Text(
        'lec1_1_11'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_1_12'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_1_13'.tr,
        style: Get.textTheme.bodyText1
      ),
      sizedBoxLow(),
      Text(
        'lec1_1_14'.tr,
        style: Get.textTheme.bodyText1
      ),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kred,
          handler: () {
            AuthService().upgradeData('lec1_2');
            Get.off(Lec1_2(title: Headers.theoryHeaders['data'.tr]![0][1]), transition: Transition.rightToLeft);
          }
      )
    ],
  );

}

