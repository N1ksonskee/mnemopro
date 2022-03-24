import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/course_pages/module3/prac_cfo_info.dart';
import 'package:practical_mnemonic/course_pages/module3/prac_ukraine_info.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec3_3 extends StatelessWidget {
  const Lec3_3({Key? key, required this.title}) : super(key: key);
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
            children: [
              TextSpan(text: 'lec3_3_1'.tr),
              TextSpan(text: 'lec3_3_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_3_3'.tr),
              TextSpan(text: 'lec3_3_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_3_5'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_7'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_8'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec3_3_9'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec3_3_12'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_3_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical3_4');
              Get.off(
              'data'.tr == 'ru'
                  ? PracticalCFOInfo(title: Headers.practicalHeaders['data'.tr]![2][3], maxSecondsStart: 30, maxArrayInterval: 3)
                  : PracticalUkraineInfo(title: Headers.practicalHeaders['data'.tr]![2][3], maxSecondsStart: 30, maxArrayInterval: 3),
              transition: Transition.rightToLeft
              );
            }
        )
      ]
  );
}