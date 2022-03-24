import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';

import 'lec7_5.dart';

class Lec7_4 extends StatelessWidget {
  const Lec7_4({Key? key, required this.title}) : super(key: key);
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

  Widget _buildBody() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_4_1'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_4_2'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_4_3'.tr),
                TextSpan(text: 'lec7_4_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold) ),
                TextSpan(text: 'lec7_4_5'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SvgPicture.asset('assets/purpose.svg'), flex: 1,),
            const SizedBox(width: 16,),
            Expanded(
              flex: 3,
              child: RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'lec7_4_6'.tr),
                      TextSpan(text: 'lec7_4_7'.tr,  style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'lec7_4_8'.tr),
                    ]
                ),
              ),
            )
          ],
        ),
        sizedBoxHigh(),
        Text(
          'lec7_4_9'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_4_10'.tr),
              TextSpan(text: 'lec7_4_11'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_4_12'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_4_13'.tr),
                TextSpan(text: 'lec7_4_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_4_15'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/tree-world.svg', height: 400,)),
        sizedBoxHigh(),
        Text(
          'lec7_4_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_4_17'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_4_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_4_19'.tr),
              TextSpan(text: 'lec7_4_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_4_21'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_4_22'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_4_23'.tr,
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
                  'lec7_4_24'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec7_4_25'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_4_26'.tr,
          style: Get.textTheme.bodyText1,
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
                  'lec7_4_27'.tr,
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
                  'lec7_4_28'.tr,
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
                  'lec7_4_29'.tr,
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
              '5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_4_30'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_4_31'.tr),
              TextSpan(text: 'lec7_4_32'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_4_33'.tr),
              TextSpan(text: 'lec7_4_34'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_4_35'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/south_america.svg')),
        sizedBoxHigh(),
        Text(
          'lec7_4_36'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '6',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_4_37'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_4_38'.tr),
                TextSpan(text: 'lec7_4_39'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_4_40'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_4_41'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_4_42'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SvgPicture.asset('assets/purpose.svg'), flex: 1,),
            const SizedBox(width: 16,),
            Expanded(
              flex: 3,
              child: RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'lec7_4_43'.tr,  style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'lec7_4_44'.tr),
                      TextSpan(text: 'lec7_4_45'.tr,  style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'lec7_4_46'.tr),
                    ]
                ),
              ),
            )
          ],
        ),
        sizedBoxHigh(),
        Text(
          'lec7_4_47'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_4_48'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
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
                  'lec7_4_49'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec7_4_50'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/moscow-map1.svg')),
        sizedBoxHigh(),
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
                  'lec7_4_51'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec7_4_52'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/moscow-map2.svg', height: 300,)),
        sizedBoxHigh(),
        Text(
          'lec7_4_53'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_4_54'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
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
                  'lec7_4_55'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxHigh(),
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
                  'lec7_4_56'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxHigh(),
        Text(
          'lec7_4_57'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            Text(
              'lec7_4_58'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxHigh(),
             Text(
              'lec7_4_59'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kred),
            ),
            sizedBoxLow(),
            Text(
              'lec7_4_60'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
          ],
          title: 'lec7_4_61'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
          subtitleColor: kblueDark
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec7_5');
              Get.off(Lec7_5(title: Headers.theoryHeaders['data'.tr]![6][4]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}