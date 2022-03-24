import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';

import 'lec5_2.dart';

class Lec5_1 extends StatelessWidget {
  const Lec5_1({Key? key, required this.title}) : super(key: key);
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
          'lec5_1_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec5_1_2'.tr,
                  style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_3'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_1_4'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_5'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_7'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_1_8'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold)
                )
            )
          ],
        ),
        sizedBoxHigh(),
        Text(
          'lec5_1_9'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_1_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        const SizedBox(height: 300 ,child: ExpansionImage(path: 'assets/states_populous.svg', isSvg: true,)),
        sizedBoxLow(),
        Text(
          'lec5_1_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_1_13'.tr),
              TextSpan(text: 'lec5_1_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_15'.tr),
              TextSpan(text: 'lec5_1_16'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_17'.tr),
              TextSpan(text: 'lec5_1_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_19'.tr),
              TextSpan(text: 'lec5_1_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_21'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_22'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_1_23'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_1_24'.tr,
          style: Get.textTheme.bodyText1,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_1_25'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, fontSize: 20)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_26'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/haracteristic-cat-car.svg', height: 300,)),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_1_27'.tr),
              TextSpan(text: 'lec5_1_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_29'.tr),
              TextSpan(text: 'lec5_1_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_31'.tr),
              TextSpan(text: 'lec5_1_32'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/haracteristic-cat-military-car.svg', height: 300,)),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_1_33'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, fontSize: 20)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_34'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('assets/haracteristic-cat-car_2.svg', height: 300,)),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_1_35'.tr),
              TextSpan(text: 'lec5_1_36'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_37'.tr),
              TextSpan(text: 'lec5_1_38'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_39'.tr),
              TextSpan(text: 'lec5_1_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_41'.tr),
              TextSpan(text: 'lec5_1_42'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_43'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_44'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_45'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_1_46'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_47'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_48'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_49'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_1_50'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
         Text(
          'lec5_1_51'.tr,
          style: const TextStyle(color: kred, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_52'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec5_1_53'.tr,
          style: const TextStyle(color: kred, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_54'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_1_55'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
         Text(
          'lec5_1_56'.tr,
          style: const TextStyle(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_1_57'.tr),
              TextSpan(text: 'lec5_1_58'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_59'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_60'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec5_1_61'.tr,
          style: const TextStyle(color: kblue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_1_62'.tr),
              TextSpan(text: 'lec5_1_63'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_64'.tr),
              TextSpan(text: 'lec5_1_65'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_1_66'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec5_1_67'.tr),
                TextSpan(text: 'lec5_1_68'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec5_1_69'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/yacht.svg', height: 500,)),
        sizedBoxHigh(),
        Text(
          'lec5_1_70'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_1_71'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, fontSize: 20)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_72'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_1_73'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, fontSize: 20)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_74'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_75'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_76'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_77'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_78'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_1_79'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec5_2');
              Get.off(Lec5_2(title: Headers.theoryHeaders['data'.tr]![4][1]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}