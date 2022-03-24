import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';

import 'lec7_3.dart';

class Lec7_2 extends StatelessWidget {
  const Lec7_2({Key? key, required this.title}) : super(key: key);
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
        CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec7_2_1'.tr)
                  ]
              ),
            ),
            sizedBoxHigh(),
            Row(
              children: [
                Expanded(child: SvgPicture.asset('assets/purpose.svg'), flex: 1,),
                const SizedBox(width: 16,),
                Expanded(
                  flex: 3,
                  child: RichText(
                    text: TextSpan(
                        style: Get.textTheme.bodyText1,
                        children:  [
                          TextSpan(text: 'lec7_2_2'.tr),
                          TextSpan(text: 'lec7_2_3'.tr,  style: const TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'lec7_2_4'.tr),
                        ]
                    ),
                  ),
                )
              ],
            ),
            sizedBoxLow(),
            Text(
              'lec7_2_5'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_2_6'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_2_7'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
          ],
          title: 'lec7_2_8'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
          subtitleColor: kblueDark
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_9'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow() ,
        Text(
          'lec7_2_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_2_12'.tr),
                TextSpan(text: 'lec7_2_13'.tr,  style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ':'),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_17'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_19'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_21'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_22'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/face.svg', height: 300,)),
        sizedBoxHigh(),
        Text(
          'lec7_2_23'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_2_24'.tr),
              TextSpan(text: 'lec7_2_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_2_26'.tr),
                TextSpan(text: 'lec7_2_27'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_2_28'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_29'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_30'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_31'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_32'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_33'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_34'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_35'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_36'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_37'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_38'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_39'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_40'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_41'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_42'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_43'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_44'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_45'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_46'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_47'.tr, style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_48'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_49'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_50'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_51'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_52'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children:  [
                  TextSpan(text: 'lec7_2_53'.tr),
                  TextSpan(text: 'lec7_2_54'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec7_2_55'.tr,
              style: Get.textTheme.bodyText1,
            ),
          ],
          title: 'lec7_2_56'.tr,
          subtitle: 'import'.tr,
          color: kred,
          subtitleColor: kredDark
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_57'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_2_58'.tr),
                TextSpan(text: 'lec7_2_59'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_2_60'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_61'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_62'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Image.asset('assets/face.jpeg'),
        sizedBoxHigh(),
        Text(
          'lec7_2_63'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_64'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_65'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_66'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_67'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_68'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_69'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_2_70'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_71'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_2_72'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_2_73'.tr),
                TextSpan(text: 'lec7_2_74'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec7_3');
              Get.off(Lec7_3(title: Headers.theoryHeaders['data'.tr]![6][2]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}