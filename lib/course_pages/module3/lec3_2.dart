import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

import 'lec3_3.dart';

class Lec3_2 extends StatelessWidget {
  const Lec3_2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kredBG,
      appBar: AppBar(
        backgroundColor: kred,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2),
        leading: const CloseIconButton(isLec: true,),
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
          'lec3_2_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec3_2_2'.tr),
              TextSpan(text: 'lec3_2_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_4'.tr),
              TextSpan(text: 'lec3_2_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_6'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('lec_3_2_svg1'.tr, height: 250,)),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec3_2_7'.tr),
              TextSpan(text: 'lec3_2_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_9'.tr),
              TextSpan(text: 'lec3_2_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_11'.tr),
              TextSpan(text: 'lec3_2_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec3_2_13'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec3_2_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec3_2_15'.tr),
              TextSpan(text: 'lec3_2_16'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_17'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec3_2_18'.tr),
                TextSpan(text: 'lec3_2_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold) ),
                TextSpan(text: 'lec3_2_20'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec3_2_21'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec3_2_22'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kred, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec3_2_23'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec3_2_24'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec3_2_25'.tr),
              TextSpan(text: 'lec3_2_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_27'.tr),
              TextSpan(text: 'lec3_2_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_29'.tr),
              TextSpan(text: 'lec3_2_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_31'.tr),
              TextSpan(text: 'lec3_2_32'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_2_33'.tr,),
            ]
          )
        ),
        sizedBoxLow(),
        Text(
          'lec3_2_34'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_2_35'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_2_36'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec3_3');
              Get.off(Lec3_3(title: Headers.theoryHeaders['data'.tr]![2][2]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}