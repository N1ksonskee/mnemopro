import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/main.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec5_3 extends StatelessWidget {
  const Lec5_3({Key? key, required this.title}) : super(key: key);
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
             TextSpan(text: 'lec5_3_1'.tr),
             TextSpan(text: 'lec5_3_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
             TextSpan(text: 'lec5_3_3'.tr),
             TextSpan(text: 'lec5_3_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
             TextSpan(text: 'lec5_3_5'.tr)
           ]
         ),
       ),
        sizedBoxHigh(),
        Text(
          'lec5_3_6'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_3_7'.tr),
              TextSpan(text: 'lec5_3_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_3_9'.tr),
              TextSpan(text: 'lec5_3_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_3_11'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_3_15'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_3_16'.tr),
              TextSpan(text: 'lec5_3_17'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_3_18'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec5_3_19'.tr),
                TextSpan(text: 'lec5_3_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec5_3_21'.tr),
                TextSpan(text: 'lec5_3_22'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec5_3_23'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec5_3_24'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_3_25'.tr),
              TextSpan(text: 'lec5_3_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_3_27'.tr),
              TextSpan(text: 'lec5_3_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_3_29'.tr),
              TextSpan(text: 'lec5_3_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold) ),
              TextSpan(text: 'lec5_3_31'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec5_3_32'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_3_33'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_34'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec5_3_35'.tr),
                TextSpan(text: 'lec5_3_36'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec5_3_37'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_38'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_3_39'.tr),
              TextSpan(text: 'lec5_3_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_3_41'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec5_3_42'.tr),
                TextSpan(text: 'lec5_3_43'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec5_3_44'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec5_3_45'.tr),
                TextSpan(text: 'lec5_3_46'.tr, style: const TextStyle(color: kblue)),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_47'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_3_48'.tr),
              TextSpan(text: 'lec5_3_49'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_3_50'.tr),
              TextSpan(text: 'lec5_3_51'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_52'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_53'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_54'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_55'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_56'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_3_57'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'finish'.tr,
            color: kred,
            handler: () {
              if(!GetStorage().read('lec6_1')) {
                AuthService().upgradeData('lec6_1');
                AuthService().upgradeData('phone-numbers');
                AuthService().upgradeData('car-numbers');
                AuthService().upgradeData('passwords');
                AuthService().upgradeData('dates');
                AuthService().upgradeData('pi');
                Get.offAll(const HomePage(), arguments: '6',transition: Transition.leftToRight);
              } else {
                Get.back();
              }
            }
        )
      ]
  );
}