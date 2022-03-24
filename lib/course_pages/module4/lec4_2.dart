import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'prac_number1_info.dart';

class Lec4_2 extends StatelessWidget {
  const Lec4_2({Key? key, required this.title}) : super(key: key);
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
          'lec4_2_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_2_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_2_3'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_2_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_2_5'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_6'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_7'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_8'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_2_9'.tr),
              TextSpan(text: 'lec4_2_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_2_11'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_2_13'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_2_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
       'data'.tr == 'ru' ? Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           sizedBoxHigh(),
           Text(
             'Для русского алфавита:',
             style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
           ),
           sizedBoxLow(),
           Text(
             'а - арбуз',
             style: Get.textTheme.bodyText1,
           ),
           sizedBoxLow(),
           Text(
             'б - банан',
             style: Get.textTheme.bodyText1,
           ),
           sizedBoxLow(),
           Text(
             'в - вишня',
             style: Get.textTheme.bodyText1,
           ),
         ],
       ) : Container(),
        sizedBoxHigh(),
        Text(
          'lec4_2_15'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_17'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_2_19'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_21'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_22'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_2_23'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_24'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_25'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_2_26'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_2_27'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_2_28'.tr),
              TextSpan(text: 'lec4_2_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
            ]
          ),
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical4_2');
              Get.off(PracticalNumber1Info(title: Headers.practicalHeaders['data'.tr]![3][1], maxSecondsStart: 20), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}