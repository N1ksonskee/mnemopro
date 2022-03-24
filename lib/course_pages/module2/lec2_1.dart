import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/course_pages/module2/practical_chain_info.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';

class Lec2_1 extends StatelessWidget {
  const Lec2_1({Key? key, required this.title}) : super(key: key);

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
          'lec2_1_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec2_1_2'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec2_1_3'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_4'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec2_1_5'.tr),
              TextSpan(text: 'lec2_1_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec2_1_7'.tr),
              TextSpan(text: 'lec2_1_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec2_1_9'.tr),

            ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/ooooo.svg', height: 250,)),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec2_1_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec2_1_11'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec2_1_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec2_1_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            Text(
            'lec2_1_14'.tr,
            style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec2_1_15'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec2_1_16'.tr,
              style: Get.textTheme.bodyText1,
            ),
          ],
          title: 'lec2_1_17'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_18'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec2_1_19'.tr),
              TextSpan(text: 'lec2_1_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec2_1_21'.tr),
              TextSpan(text: 'lec2_1_22'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec2_1_23'.tr),
              TextSpan(text: 'lec2_1_24'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec2_1_25'.tr),
                TextSpan(text: 'lec2_1_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec2_1_27'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_28'.tr,
          style: Get.textTheme.headline2
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_29'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec2_1_30'.tr),
                TextSpan(text: 'lec2_1_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec2_1_32'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec2_1_33'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/ooooo2.svg', height: 300,)),
        sizedBoxHigh(),
        Text(
          'lec2_1_34'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_35'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_36'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_37'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec2_1_38'.tr),
              TextSpan(text: 'lec2_1_39'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec2_1_40'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_41'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'lec2_1_42'.tr),
                    TextSpan(text: 'lec2_1_43'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec2_1_44'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'lec2_1_45'.tr),
                      TextSpan(text: 'lec2_1_46'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec2_1_47'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec2_1_48'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec2_1_49'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_50'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: Text('lec2_1_51'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text('lec2_1_52'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text('lec2_1_53'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text('lec2_1_54'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16),
            Expanded(
                child: Text('lec2_1_55'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '6',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text('lec2_1_56'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '7',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text('lec2_1_57'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec2_1_58'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec2_1_59'.tr,
          style: Get.textTheme.headline2!.copyWith(color: kredDark),
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec2_1_60'.tr),
              TextSpan(text: 'lec2_1_61'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec2_1_62'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/not-chain.svg', height: 400,)),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical2_1');
              Get.off(PracticalChainInfo(title: Headers.practicalHeaders['data'.tr]![1][0], chainCount: 30, maxSecondsStart: 20, maxArrayInterval: 4), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}