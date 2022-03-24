import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'practical_matreshka_chain_info.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec2_2 extends StatelessWidget {
  const Lec2_2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kredBG,
      appBar: AppBar(

        backgroundColor: kred,
        title: Text(
          title,
          style: Get.textTheme.headline1, maxLines: 2),
        leading: const CloseIconButton(),
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
            TextSpan(text: 'lec2_2_1'.tr),
            TextSpan(text: 'lec2_2_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec2_2_3'.tr),
            TextSpan(text: 'lec2_2_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec2_2_5'.tr,),
            TextSpan(text: 'lec2_2_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec2_2_7'.tr),
            TextSpan(text: 'lec2_2_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec2_2_9'.tr),
          ]
        ),
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/matreshka-crocodile-cat.svg', height: 250,)),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'lec2_2_10'.tr),
            TextSpan(text: 'lec2_2_11'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec2_2_12'.tr),
          ]
        ),
      ),
      sizedBoxHigh(),
      Text(
        'lec2_2_13'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec2_2_14'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec2_2_15'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec2_2_16'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/matreshka1.svg', height: 150,)),
      sizedBoxHigh(),
      Text(
        'lec2_2_17'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec2_2_18'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/matreshka2.svg', height: 150,)),
      sizedBoxHigh(),
      Text(
        'lec2_2_19'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec2_2_20'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70, color: kred),
          ),
          const SizedBox(width: 16,),
          Expanded(
              child: Text(
                'lec2_2_21'.tr,
                style: Get.textTheme.bodyText1,
              )
          )
        ],
      ),
      Text(
        'lec2_2_22'.tr,
        style: Get.textTheme.bodyText1,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 70, color: kred),
          ),
          const SizedBox(width: 16,),
          Expanded(
              child: Text(
                'lec2_2_23'.tr,
                style: Get.textTheme.bodyText1,
              )
          )
        ],
      ),
      Text(
        'lec2_2_24'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'lec2_2_25'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec2_2_26'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children:  [
            TextSpan(text: 'lec2_2_27'.tr),
            TextSpan(text: 'lec2_2_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec2_2_29'.tr),
            TextSpan(text: 'lec2_2_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'lec2_2_31'.tr),
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'lec2_2_32'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/matreshka-cat-sailor.svg', height: 300,)),
      sizedBoxHigh(),
      Text(
        'lec2_2_33'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/matreshka-sailor-milk.svg', height: 300,)),
      sizedBoxHigh(),
      Text(
        'lec2_2_34'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Center(child: SvgPicture.asset('assets/matreshka-milk-card.svg', height: 300,)),
      sizedBoxHigh(),
      Text(
        'lec2_2_35'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'lec2_2_36'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'lec2_2_37'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Center(child: SvgPicture.asset('assets/vetvlenie.svg', height: 400,)),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kblue,
          handler: () {
            AuthService().upgradeData('practical2_2');
            Get.off(PracticalMatreshkaChainInfo(title: Headers.practicalHeaders['data'.tr]![1][1], chainCount: 30, maxSecondsStart: 25, maxArrayInterval: 4,), transition: Transition.rightToLeft);
          }
      )
    ]
  );
}