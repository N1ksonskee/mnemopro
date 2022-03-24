import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/course_pages/module7/practic_flags_info.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';

class Lec7_5 extends StatelessWidget {
  const Lec7_5({Key? key, required this.title}) : super(key: key);
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
        Text(
          'lec7_5_1'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_5_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_5_3'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_5'.tr),
                TextSpan(text: 'lec7_5_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_7'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec7_5_8'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_5_9'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_5_10'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_5_11'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_5_12'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxHigh(),
        Text(
          'lec7_5_13'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_5_14'.tr,
          style: const TextStyle(fontSize: 20, color: kblue, fontWeight: FontWeight.normal),
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/flags/grenada.svg', height: 250,)),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_5_15'.tr),
              TextSpan(text: 'lec7_5_16'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_17'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.headline2,
            children:  [
              const TextSpan(text: '*', style: TextStyle(color: kred)),
              TextSpan(text: 'lec7_5_19'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec7_5_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_21'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_22'.tr),
                TextSpan(text: 'lec7_5_23'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_24'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec7_5_25'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_26'.tr),
                TextSpan(text: 'lec7_5_27'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_28'.tr),
                TextSpan(text: 'lec7_5_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_30'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec7_5_31'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_32'.tr),
                TextSpan(text: 'lec7_5_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_34'.tr)
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_35'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_36'.tr),
                TextSpan(text: 'lec7_5_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_38'.tr)
              ]
          ),
        ),
        sizedBoxLow(),
        sizedBoxHigh(),
         Text(
          'lec7_5_39'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kred),
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_40'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_41'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_5_42'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_5_43'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_44'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text:  TextSpan(
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: kblue),
            children:  [
              TextSpan(text: 'lec7_5_45'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_5_46'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/flags/sierra_leone.svg', height: 250,)),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_47'.tr),
                TextSpan(text: 'lec7_5_48'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_49'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_5_50'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_51'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_52'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_5_53'.tr),
              TextSpan(text: 'lec7_5_54'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_5_55'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_56'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_57'.tr),
                TextSpan(text: 'lec7_5_58'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_59'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        RichText(
          text:  TextSpan(
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: kblue),
              children: [
                TextSpan(text: 'lec7_5_60'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_61'.tr)
              ]
          ),
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/flags/gabon.svg', height: 250,)),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_62'.tr),
                TextSpan(text: 'lec7_5_63'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_64'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_5_65'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_66'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_67'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_5_68'.tr),
                TextSpan(text: 'lec7_5_69'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_5_70'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_5_71'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            Text(
              'lec7_5_72'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_5_73'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_5_74'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_5_75'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
          ],
          title: 'lec7_5_76'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical7_1');
              Get.off(PracticalFlagsInfo(title: Headers.practicalHeaders['data'.tr]![6][0], maxSecondsStart: 40, maxArrayInterval: 4), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}