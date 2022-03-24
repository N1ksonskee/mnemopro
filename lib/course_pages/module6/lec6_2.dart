import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
import 'lec6_3.dart';

class Lec6_2 extends StatelessWidget {
  const Lec6_2({Key? key, required this.title}) : super(key: key);
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
              TextSpan(text: 'lec6_2_1'.tr),
              TextSpan(text: 'lec6_2_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_2_3'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_2_4'.tr),
                TextSpan(text: 'lec6_2_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_2_7'.tr),
                TextSpan(text: 'lec6_2_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_2_9'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_10'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_2_16'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_2_17'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_19'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_2_21'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_2_22'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_2_23'.tr),
              TextSpan(text: 'lec6_2_24'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_2_25'.tr),
              TextSpan(text: 'lec6_2_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_2_27'.tr),
              TextSpan(text: 'lec6_2_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_2_29'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_2_30'.tr),
              TextSpan(text: 'lec6_2_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_2_32'.tr),
              TextSpan(text: 'lec6_2_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_2_34'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec6_2_35'.tr),
                    TextSpan(text: 'lec6_2_36'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_2_37'.tr),
                  ]
              ),
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec6_2_38'.tr),
                    TextSpan(text: 'lec6_2_39'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_2_40'.tr),
                  ]
              ),
            ),
          ],
          title: 'lec6_2_41'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
         subtitleColor: kblueDark
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec6_3');
              Get.off(Lec6_3(title: Headers.theoryHeaders['data'.tr]![5][2]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}