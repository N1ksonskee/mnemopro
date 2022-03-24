import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
import 'lec7_4.dart';

class Lec7_3 extends StatelessWidget {
  const Lec7_3({Key? key, required this.title}) : super(key: key);
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
          'lec7_3_1'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_2'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_3'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_5'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_3_6'.tr),
              TextSpan(text: 'lec7_3_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_8'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_9'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_12'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_3_13'.tr),
              TextSpan(text: 'lec7_3_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_15'.tr),
              TextSpan(text: 'lec7_3_16'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_17'.tr),
              TextSpan(text: 'lec7_3_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_19'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
            'lec7_3_20'.tr,
            style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic)
        ),
        sizedBoxLow(),
        const ExpansionImage(path: 'assets/the_last_supper.jpeg'),
        sizedBoxHigh(),
        sizedBoxHigh(),
        Text(
          'lec7_3_21'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_22'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_23'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_3_24'.tr),
              TextSpan(text: 'lec7_3_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_26'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_27'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_3_28'.tr),
                TextSpan(text: 'lec7_3_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_3_30'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        sizedBoxHigh(),
        const ExpansionImage(path: 'assets/gold_autamn.jpeg'),
        sizedBoxHigh(),
        sizedBoxHigh(),
        sizedBoxHigh(),
        Text(
          'lec7_3_31'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_32'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_33'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_34'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_35'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_46'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_3_37'.tr),
              TextSpan(text: 'lec7_3_38'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_39'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_3_40'.tr),
                TextSpan(text: 'lec7_3_41'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_3_42'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Image.asset('assets/ottepel.jpeg'),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_3_43'.tr),
              TextSpan(text: 'lec7_3_44'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_45'.tr),
              TextSpan(text: 'lec7_3_46'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_47'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_3_48'.tr),
                TextSpan(text: 'lec7_3_49'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_3_50'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: Text(
                'lec7_3_51'.tr,
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
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec7_3_52'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_53'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_54'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_55'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_56'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_57'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_58'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_59'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_60'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_61'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_62'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_63'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_3_64'.tr),
              TextSpan(text: 'lec7_3_65'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_66'.tr),
              TextSpan(text: 'lec7_3_67'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_3_68'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_3_69'.tr),
                TextSpan(text: 'lec7_3_70'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_3_71'.tr),
                TextSpan(text: 'lec7_3_72'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_73'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_74'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_75'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic)
        ),
        sizedBoxLow(),
        const ExpansionImage(path: 'assets/last-day-of-pompey.jpeg'),
        sizedBoxHigh(),
        sizedBoxHigh(),
         Center(
          child: Text(
            'lec7_3_76'.tr,
            style: const TextStyle(fontSize: 20, color: kblue, fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
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
                      TextSpan(text: 'lec7_3_77'.tr,  style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'lec7_3_78'.tr),
                    ]
                ),
              ),
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_79'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_80'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_81'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_82'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_83'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
            'lec7_3_84'.tr,
            style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic)
        ),
        sizedBoxLow(),
        const ExpansionImage(path: 'assets/last-day-of-pompey_markered.jpeg'),
        sizedBoxHigh(),
        sizedBoxHigh(),
        Text(
          'lec7_3_85'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_86'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_87'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_88'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_89'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_90'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_91'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_92'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_93'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_3_94'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_95'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_96'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_97'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_3_98'.tr),
              TextSpan(text: 'lec7_3_99'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
            ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec7_3_100'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
        ),
        sizedBoxLow(),
        Text(
          'lec7_3_101'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec7_4');
              Get.off(Lec7_4(title: Headers.theoryHeaders['data'.tr]![6][3]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}