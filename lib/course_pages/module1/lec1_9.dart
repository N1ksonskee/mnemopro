import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/course_pages/module1/practical_pairs1_info.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';


class Lec1_9 extends StatelessWidget {
  const Lec1_9({Key? key, required this.title}) : super(key: key);
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
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_9_1'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_9_2'.tr)
          ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_3'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_4'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_5'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_6'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/picture-conection.svg', height: 300,)),
      sizedBoxHigh(),
      Text(
        'lec1_9_7'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_8'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_9'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Center(child: SvgPicture.asset('assets/elephant-fly.svg', height: 250,)),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_9_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_9_11'.tr),
            TextSpan(text: 'lec1_9_12'.tr,style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_9_13'.tr)
          ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_14'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_15'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_16'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Center(child: SvgPicture.asset('assets/konter.svg', height: 250,)),
      sizedBoxHigh(),
      CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'lec1_9_17'.tr),
                    TextSpan(text: 'lec1_9_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec1_9_19'.tr,),
                  ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec1_9_20'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
          ],
          title: 'lec1_9_21'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_22'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_23'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_9_24'.tr),
            TextSpan(text: 'lec1_9_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_9_26'.tr),
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_27'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
       'lec1_9_28'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_29'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: [
                  TextSpan(text: 'lec1_9_30'.tr),
                  TextSpan(text: 'lec1_9_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec1_9_32'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec1_9_33'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
          ],
          title: 'lec1_9_34'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_35'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_9_36'.tr),
            TextSpan(text: 'lec1_9_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_38'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_39'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec1_9_40'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_9_41'.tr),
            TextSpan(text: 'lec1_9_42'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_43'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec1_9_44'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec1_9_45'.tr),
            TextSpan(text: 'lec1_9_46'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec1_9_47'.tr)
          ]
        ),
      ),
      sizedBoxHigh(),
      CustomExpansionTileLec(
        widgets: [
          Text(
            'lec1_9_48'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_9_49'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_9_50'.tr,)
              ]
            ),
          ),
          sizedBoxLow(),
        ],
        title: 'lec1_9_51'.tr,
        subtitle: 'additional'.tr,
        color: kblue,
        subtitleColor: kblueDark
      ),
      sizedBoxHigh(),
      CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: [
                  TextSpan(text: 'lec1_9_52'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_9_53'.tr),
                ]
              ),
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
              style: Get.textTheme.bodyText1,
                children: [
                  TextSpan(text: 'lec1_9_54'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_9_55'.tr),
                  TextSpan(text: 'lec1_9_56'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_9_57'.tr),
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec1_9_58'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec1_9_59'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec1_9_60'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec1_9_61'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec1_9_62'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
          ],
          title: 'lec1_9_63'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
      ),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kblue,
          handler: () {
            AuthService().upgradeData('practical1_1');
            Get.off(PracticalPairs1Info(title: Headers.practicalHeaders['data'.tr]![0][0], maxSecondsStart: 25), transition: Transition.rightToLeft);
          }
      ),
    ]
  );
}
