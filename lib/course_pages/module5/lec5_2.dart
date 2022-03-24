import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/course_pages/module5/prac_90_info.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec5_2 extends StatelessWidget {
  const Lec5_2({Key? key, required this.title}) : super(key: key);
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
          'lec5_2_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_2_2'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_3'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20)
                )
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_4'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20)
                )
            )
          ],
        ),
        sizedBoxHigh(),
         Text(
          'lec5_2_5'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20)
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
            'lec5_2_7'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20)
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_2_8'.tr),
              TextSpan(text: 'lec5_2_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_10'.tr),
              TextSpan(text: 'lec5_2_11'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_12'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
         Text(
            'lec5_2_13'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20)
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_2_14'.tr),
              TextSpan(text: 'lec5_2_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_16'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec5_2_17'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_2_18'.tr),
              TextSpan(text: 'lec5_2_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold, color: kblue)),
              TextSpan(text: 'lec5_2_21'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_22'.tr, style: const TextStyle(fontWeight: FontWeight.bold, color: kblue)),
              const TextSpan(text: '.', style: TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          '100 + 10',
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_2_23'.tr),
              TextSpan(text: 'lec5_2_24'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_25'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec5_2_26'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_2_27'.tr),
              TextSpan(text: 'lec5_2_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_29'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '0 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_30'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_31'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_32'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_33'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_34'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_35'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_36'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_37'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '4 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_38'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_39'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '5 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_40'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_41'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '6 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_42'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
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
              '7 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_43'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_44'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '8 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_45'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_46'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '9 -',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                    'lec5_2_47'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: 20, color: kblue)
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_48'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_2_49'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_2_50'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_51'.tr),
              TextSpan(text: 'lec5_2_52'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: ', '),
              TextSpan(text: 'lec5_2_53'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: ', '),
              TextSpan(text: 'lec5_2_54'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: ', '),
              TextSpan(text: 'lec5_2_55'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_56'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1!.copyWith(color: kred),
            children:  [
              TextSpan(text: 'lec5_2_57'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_58'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec5_2_59'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec5_2_60'.tr),
              TextSpan(text: 'lec5_2_61'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec5_2_62'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_63'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_2_64'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec5_2_65'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec5_2_66'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical5_1');
              Get.off(Practical90Info(title: Headers.practicalHeaders['data'.tr]![4][0], chainCount: 30, maxSecondsStart: 30, maxArrayInterval: 4), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}