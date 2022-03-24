import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';

import 'prac_locii1_info.dart';

class Lec4_1 extends StatelessWidget {
  const Lec4_1({Key? key, required this.title}) : super(key: key);
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
          'lec4_1_1'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_2'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_3'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_5'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_7'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_8'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec4_1_9'.tr),
              TextSpan(text: 'lec4_1_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec4_1_11'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_1_12'.tr),
                TextSpan(text: 'lec4_1_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_1_14'.tr),
                TextSpan(text: 'lec4_1_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec4_1_16'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('lec4_1_svg1'.tr, height: 300,)),
        sizedBoxHigh(),
        Text(
          'lec4_1_17'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_1_18'.tr),
              TextSpan(text: 'lec4_1_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_1_20'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_21'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          'lec4_1_22'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec4_1_23'.tr),
                TextSpan(text: 'lec4_1_24'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const  Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec4_1_25'.tr,
                  style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_26'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_27'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_28'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_29'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_30'.tr,
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
                  'lec4_1_31'.tr,
                  style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                )
            )
          ],
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_1_32'.tr),
              TextSpan(text: 'lec4_1_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec4_1_34'.tr,
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
                  'lec4_1_35'.tr,
                  style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_36'.tr,
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
            const  SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec4_1_37'.tr,
                  style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_38'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_1_39'.tr),
              TextSpan(text: 'lec4_1_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_1_41'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: RichText(
                  text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children:  [
                        TextSpan(text: 'lec4_1_42'.tr, style: const  TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'lec4_1_43'.tr),
                        TextSpan(text: 'lec4_1_44'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      ]
                  ),
                ),
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_45'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec4_1_46'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxLow(),
        Text(
          'lec4_1_47'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic)
        ),
        const ExpansionImage(path: 'assets/object-locii.svg', isSvg: true,),
        const ExpansionImage(path: 'assets/room-locii.svg', isSvg: true,),
        const ExpansionImage(path: 'assets/route-locii.svg', isSvg: true,),
        Text(
          'lec4_1_48'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec4_1_49'.tr),
              TextSpan(text: 'lec4_1_50'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec4_1_51'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            Text(
              'lec4_1_52'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
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
                      'lec4_1_53'.tr,
                      style: Get.textTheme.headline2!.copyWith(color: kblue, fontWeight: FontWeight.normal),
                    )
                )
              ],
            ),
            sizedBoxLow(),
            Text(
              'lec4_1_54'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec4_1_55'.tr,
              style: Get.textTheme.bodyText1,
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
                      'lec4_1_56'.tr,
                      style: Get.textTheme.headline2!.copyWith(color: kblue, fontWeight: FontWeight.normal),
                    )
                )
              ],
            ),
            sizedBoxLow(),
            Text(
              'lec4_1_57'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children:  [
                  TextSpan(text: 'lec4_1_58'.tr),
                  TextSpan(text: 'lec4_1_59'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec4_1_60'.tr)
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec4_1_61'.tr,
              style: Get.textTheme.bodyText1,
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
                      'lec4_1_62'.tr,
                      style: Get.textTheme.headline2!.copyWith(color: kblue, fontWeight: FontWeight.normal),
                    )
                )
              ],
            ),
            sizedBoxLow(),
            Text(
              'lec4_1_63'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: [
                  TextSpan(text: 'lec4_1_64'.tr),
                  TextSpan(text: 'lec4_1_65'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                ]
              ),
            ),
            sizedBoxLow(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
                ),
                const SizedBox(width: 16,),
                Expanded(
                  child: Text(
                    'lec4_1_66'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(color: kred),
                  ),
                )
              ],
            ),
            sizedBoxLow(),
            Text(
              'lec4_1_67'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxHigh(),
            Text(
              'lec4_1_68'.tr,
              style: Get.textTheme.headline2,
            ),
            sizedBoxHigh(),
            Text(
              'lec4_1_69'.tr,
              style: Get.textTheme.bodyText1,
            )
          ],
          title: 'lec4_1_70'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
          subtitleColor: kblue
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical4_1');
              Get.off(PracticalLociiInfo(title: Headers.practicalHeaders['data'.tr]![3][0], maxArrayInterval: 4, maxSecondsStart: 20, chainCount: 30,), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}