import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/practic_pages/exercise_codes_list.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';

import 'lec4_4.dart';

class Lec4_3 extends StatelessWidget {
  const Lec4_3({Key? key, required this.title}) : super(key: key);
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
              TextSpan(text: 'lec4_3_1'.tr),
              TextSpan(text: 'lec4_3_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_3'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_5'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_3_6'.tr),
                TextSpan(text: 'lec4_3_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_8'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_9'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_3_13'.tr),
              TextSpan(text: 'lec4_3_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_15'.tr,),
              TextSpan(text: 'lec4_3_16'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_17'.tr),
              TextSpan(text: 'lec4_3_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_19'.tr),
              TextSpan(text: 'lec4_3_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_21'.tr),
              TextSpan(text: 'lec4_3_22'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_23'.tr),
              TextSpan(text: 'lec4_3_24'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_25'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_3_26'.tr),
                TextSpan(text: 'lec4_3_27'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_3_28'.tr),
                TextSpan(text: 'lec4_3_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_3_30'.tr,),
                TextSpan(text: 'lec4_3_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_3_32'.tr),
                TextSpan(text: 'lec4_3_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_3_34'.tr),
                TextSpan(text: 'lec4_3_35'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_3_36'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_37'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_38'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_3_39'.tr),
              TextSpan(text: 'lec4_3_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_41'.tr),
              TextSpan(text: 'lec4_3_42'.tr),
              TextSpan(text: 'lec4_3_43'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_44'.tr),
              TextSpan(text: 'lec4_3_45'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_46'.tr),
              TextSpan(text: 'lec4_3_47'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_48'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_49'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_50'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_51'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_52'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_53'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_3_54'.tr),
              TextSpan(text: 'lec4_3_55'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
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
                  TextSpan(text: 'lec4_3_56'.tr),
                  TextSpan(text: 'lec4_3_57'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec4_3_58'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Center(child: SvgPicture.asset('assets/42.svg', height: 350,)),
            sizedBoxHigh(),
            Text(
              'lec4_3_59'.tr,
              style: Get.textTheme.headline2,
            ),
            sizedBoxHigh(),
            Text(
              'lec4_3_60'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxHigh(),
            Text(
              'lec4_3_61'.tr,
              style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20, fontWeight: FontWeight.bold)
            ),
            sizedBoxLow(),
            Text(
              'lec4_3_62'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec4_3_63'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec4_3_64'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            SvgPicture.asset('assets/enstein-moscow-99.svg', height: 300,),
            sizedBoxLow(),
            Text(
              'lec4_3_65'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec4_3_66'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec4_3_67'.tr),
                    TextSpan(text: 'lec4_3_68'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec4_3_69'.tr),
                    TextSpan(text: 'lec4_3_70'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
              ),
            ),
          ],
          title: 'lec4_3_71'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_72'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_73'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_3_74'.tr),
              TextSpan(text: 'lec4_3_75'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_76'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_77'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kred, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_78'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_79'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_3_80'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_81'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_3_82'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_3_83'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_84'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_85'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('lec4_3_svg1'.tr, height: 200,)),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_3_86'.tr),
              TextSpan(text: 'lec4_3_87'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_3_88'.tr),
                TextSpan(text: 'lec4_3_89'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_3_90'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec4_3_91'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_3_92'.tr),
              TextSpan(text: 'lec4_3_93'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_94'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_95'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_3_96'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_3_97'.tr),
              TextSpan(text: 'lec4_3_98'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_3_99'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                AuthService().upgradeData('lec4_4');
                Get.off(ExerciseCodesList(title: 'learn_nac'.tr,), transition: Transition.rightToLeft);
              },
              child: Text(
                'learn_nac'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: kblue ),
              )
            ),
            SizedBox(
              width: 150,
              child: CustomButton(
                  title: 'next'.tr,
                  color: kred,
                  handler: () {
                    AuthService().upgradeData('lec4_4');
                    Get.off(Lec4_4(title: Headers.theoryHeaders['data'.tr]![3][3]), transition: Transition.rightToLeft);
                  }
              ),
            )
          ],
        )

      ]
  );
}