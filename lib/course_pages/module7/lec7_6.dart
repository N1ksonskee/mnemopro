import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
import 'practic_poem2_info.dart';

class Lec7_6 extends StatelessWidget {
  const Lec7_6({Key? key, required this.title}) : super(key: key);
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
          'lec7_6_1'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_2'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_6_3'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_6_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_6_5'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        CustomExpansionTileLec(
          widgets: [
            Text(
              'lec7_6_7'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_6_8'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_6_9'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_6_10'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxHigh(),
             Text(
              'lec7_6_11'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kred),
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children:  [
                  TextSpan(text: 'lec7_6_12'.tr),
                  TextSpan(text: 'lec7_6_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec7_6_14'.tr)
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec7_6_15'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow()
          ],
          title: 'lec7_6_16'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_17'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_6_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_6_20'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_21'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_6_22'.tr),
              TextSpan(text: 'lec7_6_23'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_6_24'.tr),
              TextSpan(text: 'lec7_6_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/film.svg', height: 300,)),
        sizedBoxHigh(),
        Text(
          'lec7_6_27'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_6_28'.tr),
                TextSpan(text: 'lec7_6_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_6_30'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_31'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_6_32'.tr),
                TextSpan(text: 'lec7_6_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_6_34'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_35'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_36'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_6_37'.tr),
                TextSpan(text: 'lec7_6_38'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_6_39'.tr),
                TextSpan(text: 'lec7_6_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_6_41'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_6_42'.tr),
                TextSpan(text: 'lec7_6_43'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_6_44'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_6_45'.tr),
                TextSpan(text: 'lec7_6_46'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_6_47'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_6_48'.tr),
                TextSpan(text: 'lec7_6_49'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_6_50'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_51'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_6_52'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_6_53'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_6_54'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_6_55'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_6_56'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical7_2');
              Get.off(PracticalPoem2Info(title: Headers.practicalHeaders['data'.tr]![6][1]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}