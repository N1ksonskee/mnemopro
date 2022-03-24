import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/course_pages/module6/practic_names_info.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec6_1 extends StatelessWidget {
  const Lec6_1({Key? key, required this.title}) : super(key: key);
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
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_1_1'.tr),
              TextSpan(text: 'lec6_1_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_1_3'.tr),
                TextSpan(text: 'lec6_1_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_1_5'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_1_6'.tr),
              TextSpan(text: 'lec6_1_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_8'.tr),
              TextSpan(text: 'lec6_1_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_10'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_1_11'.tr),
              TextSpan(text: 'lec6_1_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_13'.tr),
              TextSpan(text: 'lec6_1_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_15'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_1_16'.tr),
              TextSpan(text: 'lec6_1_17'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_18'.tr),
              TextSpan(text: 'lec6_1_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_20'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_1_21'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_1_22'.tr),
                TextSpan(text: 'lec6_1_23'.tr, style: const TextStyle(color: kblue))
              ]
            ),
          ),
        ),
        sizedBoxLow(),
        Center(child: Image.asset('assets/people/human_yaroslav.jpeg')),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_1_24'.tr),
              TextSpan(text: 'lec6_1_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_26'.tr),
              TextSpan(text: 'lec6_1_27'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_28'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_1_29'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_1_30'.tr),
                TextSpan(text: 'lec6_1_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_1_32'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_1_33'.tr),
              TextSpan(text: 'lec6_1_34'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_1_35'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_1_36'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_1_37'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_1_38'.tr),
              TextSpan(text: 'lec6_1_39'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_40'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_1_41'.tr),
              TextSpan(text: 'lec6_1_42'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_43'.tr),
              TextSpan(text: 'lec6_1_44'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_1_45'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_1_46'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_1_47'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical6_1');
              Get.off(PracticalNamesInfo(title: Headers.practicalHeaders['data'.tr]![5][0], maxSecondsStart: 30, maxArrayInterval: 4), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}