import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/course_pages/module1/practical_pairs_info.dart';
import 'lec1_12.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec1_11 extends StatelessWidget {
  const Lec1_11({Key? key, required this.title}) : super(key: key);
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

  Widget _buildBody() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('lec1_11_1'.tr, style: Get.textTheme.headline2,),
          sizedBoxHigh(),
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_11_2'.tr),
                TextSpan(text: 'lec1_11_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
            ),
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_11_4'.tr),
                TextSpan(text: 'lec1_11_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_11_6'.tr)
              ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'lec1_11_7'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          Text('lec1_11_8'.tr, style: Get.textTheme.headline2,),
          sizedBoxHigh(),
          Text(
            'lec1_11_9'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_11_10'.tr),
                TextSpan(text: 'lec1_11_11'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_11_12'.tr,),
              ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'lec1_11_13'.tr,
            style: Get.textTheme.bodyText1!.copyWith(height: 1.5),
          ),
          sizedBoxLow(),
          Text(
            'lec1_11_14'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          Text(
            'lec1_11_15'.tr,
            style: Get.textTheme.headline2,
          ),
          sizedBoxHigh(),
          Text(
            'lec1_11_16'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_11_17'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text:'lec1_11_18'.tr),
                TextSpan(text: 'lec1_11_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_11_20'.tr)
              ]
            ),
          ),
          sizedBoxHigh(),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Text(
                    'practical'.tr,
                    style: const TextStyle(fontSize: 24, color: kblue, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => Get.off(PracticalPairsInfo(title: Headers.practicalHeaders['data'.tr]![0][1], maxSecondsStart: 15, maxArrayInterval: 6, pairsCount: 50), transition: Transition.rightToLeft),
                )
              ),
              const SizedBox(width: 16,),
              Expanded(
                child: CustomButton(
                    title: 'next'.tr,
                    color: kred,
                    handler: () {
                      AuthService().upgradeData('lec1_12');
                      Get.off(Lec1_12(title: Headers.theoryHeaders['data'.tr]![0][11]), transition: Transition.rightToLeft);
                    }
                ),
              )
            ],
          )
        ]
    );
  }
}