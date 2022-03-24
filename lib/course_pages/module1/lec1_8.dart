import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
import 'lec1_9.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec1_8 extends StatelessWidget {
  const Lec1_8({Key? key, required this.title}) : super(key: key);

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
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_8_1'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_8_2'.tr),
          ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec1_8_3'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_8_4'.tr,
        style: Get.textTheme.bodyText1!.copyWith(height: 1.5),
      ),
      sizedBoxLow(),
      Center(child: SvgPicture.asset('assets/picture.svg', height: 300,)),
      sizedBoxLow(),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'lec1_8_5'.tr,
            style: Get.textTheme.headline2,
          ),
          const SizedBox(width: 10),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
              '🚗',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
      sizedBoxLow(),
      Text(
        'lec1_8_6'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_8_7'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_8_8'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_8_9'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'lec1_8_10'.tr,
            style: Get.textTheme.headline2,
          ),
          const SizedBox(width: 10),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              '🐕',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      ),
      sizedBoxHigh(),
      Text(
        'lec1_8_11'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_8_12'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_8_13'.tr),
            TextSpan(text: 'lec1_8_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_8_15'.tr),
          ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec1_8_16'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_8_17'.tr),
              TextSpan(text: 'lec1_8_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_8_19'.tr),
              TextSpan(text: 'lec1_8_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_8_21'.tr),
            ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_8_22'.tr),
            TextSpan(text: 'lec1_8_23'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_8_24'.tr)
          ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_8_25'.tr),
              TextSpan(text: 'lec1_8_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_8_27'.tr)
            ]
        ),
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec1_8_28'.tr),
              TextSpan(text: 'lec1_8_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_8_30'.tr),
              TextSpan(text: 'lec1_8_31'.tr, style: const  TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec1_8_32'.tr)
            ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec1_8_33'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_8_34'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_8_35'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_8_36'.tr),
            TextSpan(text: 'lec1_8_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_8_38'.tr)
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_8_39'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      CustomExpansionTileLec(
        widgets: [
          Text(
            'lec1_8_40'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_41'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_42'.tr,
            style: Get.textTheme.bodyText1,
          ),
        ],
        title: 'lec1_8_43'.tr,
        subtitle: 'important'.tr,
        color: kred,
        subtitleColor: kredDark
      ),
      sizedBoxHigh(),
      Text(
        'lec1_8_44'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_8_45'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      CustomExpansionTileLec(
        widgets: [
          Text(
            'lec1_8_46'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_47'.tr,
            style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_48'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_49'.tr,
            style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_50'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_51'.tr,
            style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_52'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_53'.tr,
            style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
          ),
          sizedBoxLow(),
          Text(
            'lec1_8_54'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Center(child: SvgPicture.asset('assets/quality-vs-speed.svg', height: 300,)),
          sizedBoxLow(),
        ],
        title: 'lec1_8_55'.tr,
        subtitle: 'additional'.tr,
        color: kblue,
        subtitleColor: kblueDark
      ),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kred,
          handler: () {
            AuthService().upgradeData('lec1_9');
            Get.off(Lec1_9(title: Headers.theoryHeaders['data'.tr]![0][8]), transition: Transition.rightToLeft);
          }
      ),
    ]
  );
}


