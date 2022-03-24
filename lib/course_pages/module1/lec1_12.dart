import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/main.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';

class Lec1_12 extends StatelessWidget {
  const Lec1_12({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kredBG,
      appBar: AppBar(
        backgroundColor: kred,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2),
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
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_12_1'.tr),
                TextSpan(text: 'lec1_12_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_12_3'.tr),
                TextSpan(text: 'lec1_12_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'lec1_12_5'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: [
                  TextSpan(text: 'lec1_12_6'.tr),
                  TextSpan(text: 'lec1_12_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_8'.tr),
                  TextSpan(text: 'lec1_12_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'lec1_12_10'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
                style: Get.textTheme.bodyText1,
                children:  [
                  TextSpan(text: 'lec1_12_11'.tr),
                  TextSpan(text: 'lec1_12_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_13'.tr),
                  TextSpan(text: 'lec1_12_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_16'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_17'.tr),
                ]
            ),
          ),
          sizedBoxLow(),
          SvgPicture.asset('lec1_12_svg1'.tr, height: 400,),
          sizedBoxLow(),
          Text(
            'lec1_12_18'.tr,
            style: Get.textTheme.headline2,
          ),
          sizedBoxHigh(),
          Text(
            'lec1_12_19'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_12_20'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          CustomExpansionTileLec(
            widgets: [
              Text(
                'lec1_12_21'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'lec1_12_22'.tr,
                style: Get.textTheme.bodyText1,
              )
            ],
            title: 'lec1_12_23'.tr,
            subtitle: 'additional'.tr,
            color: kblue,
            subtitleColor: kblue
          ),
          sizedBoxHigh(),
          Text(
            'lec1_12_24'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          Text(
            'lec1_12_25'.tr,
             style: Get.textTheme.headline2,
          ),
          sizedBoxHigh(),
          Text(
            'lec1_12_26'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: [
                  TextSpan(text: 'lec1_12_27'.tr),
                  TextSpan(text: 'lec1_12_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_29'.tr),
                  TextSpan(text: 'lec1_12_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_31'.tr),
                ]
            ),
          ),
          sizedBoxHigh(),
          CustomExpansionTileLec(
              widgets: [
                RichText(
                  text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children: [
                        TextSpan(text: 'lec1_12_32'.tr),
                        TextSpan(text: 'lec1_12_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'lec1_12_34'.tr),
                      ]
                  ),
                ),
                sizedBoxLow(),
              ],
              title: 'lec1_12_35'.tr,
              subtitle: 'additional'.tr,
              color: kblue,
              subtitleColor: kblue
          ),
          sizedBoxHigh(),
          Text(
            'lec1_12_36'.tr,
            style: Get.textTheme.headline2,
          ),
          sizedBoxHigh(),
          Text(
            'lec1_12_37'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: [
                  TextSpan(text: 'lec1_12_38'.tr),
                  TextSpan(text: 'lec1_12_39'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_40'.tr),
                  TextSpan(text: 'lec1_12_41'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec1_12_42'.tr),
                ]
            ),
          ),
          sizedBoxHigh(),
          CustomButton(
              title: 'finish'.tr,
              color: kred,
              handler: () {
                if(!GetStorage().read('lec2_1')) {
                  AuthService().upgradeData('lec2_1');
                  AuthService().upgradeData('word-word');
                  Get.offAll(const HomePage(), arguments: '2', transition: Transition.leftToRight);
                } else {
                  Get.back();
                }
              }
          )
        ]
    );
  }
}