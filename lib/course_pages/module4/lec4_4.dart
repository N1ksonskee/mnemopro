import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

import 'lec4_5.dart';

class Lec4_4 extends StatelessWidget {
  const Lec4_4({Key? key, required this.title}) : super(key: key);
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
              TextSpan(text: 'lec4_4_1'.tr),
              TextSpan(text: 'lec4_4_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec4_4_3'.tr,
                  style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_4_5'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec4_4_7'.tr,
                  style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_8'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_4_9'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec4_4_11'.tr,
                  style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_4_13'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_17'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_19'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_21'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec4_4_22'.tr,
                  style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_23'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_4_24'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_25'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_4_26'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_4_27'.tr),
                TextSpan(text: 'lec4_4_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ':'),
              ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('lec4_4_svg1'.tr, height: 300,)),
        sizedBoxHigh(),
        Text(
          'lec4_4_29'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_4_30'.tr),
              TextSpan(text: 'lec4_4_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_4_32'.tr),
              TextSpan(text: 'lec4_4_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_4_34'.tr),
              TextSpan(text: 'lec4_4_35'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_4_36'.tr),
              TextSpan(text: 'lec4_4_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec4_4_38'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_39'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_40'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_41'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_42'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_4_43'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_4_44'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_4_45'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
          title: 'next'.tr,
          color: kred,
          handler: () {
            AuthService().upgradeData('lec4_5');
            Get.off(Lec4_5(title: Headers.theoryHeaders['data'.tr]![3][4],), transition: Transition.rightToLeft);
          }
        )

      ]
  );
}