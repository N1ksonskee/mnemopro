import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
import 'lec6_5.dart';

class Lec6_4 extends StatelessWidget {
  const Lec6_4({Key? key, required this.title}) : super(key: key);
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
         'lec6_4_1'.tr,
         style: Get.textTheme.bodyText1,
       ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_4_2'.tr),
              TextSpan(text: 'lec6_4_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_4_4'.tr),
              TextSpan(text: 'lec6_4_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_4_6'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_4_7'.tr),
              TextSpan(text: 'lec6_4_8'.tr, style:  const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_4_9'.tr),
              TextSpan(text: 'lec6_4_10'.tr, style:  const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          '...',
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_4_15'.tr),
                TextSpan(text: 'lec6_4_16'.tr, style:  const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_4_17'.tr),
                TextSpan(text: 'lec6_4_18'.tr, style:  const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_4_19'.tr),
                TextSpan(text: 'lec6_4_20'.tr, style:  const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_4_21'.tr),

              ]
          ),
        ),
        sizedBoxLow(),
        Center(child: SvgPicture.asset('lec_6_4_svg1'.tr, height: 150,)),
        sizedBoxHigh(),
         Text(
          'lec6_4_22'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_4_23'.tr),
              TextSpan(text: 'lec6_4_24'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_4_25'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_26'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_27'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_4_28'.tr),
                TextSpan(text: 'lec6_4_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_4_30'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_4_31'.tr),
                TextSpan(text: 'lec6_4_32'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_4_33'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_4_34'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec6_4_35'.tr),
                    TextSpan(text: 'lec6_4_36'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_4_37'.tr),
                    TextSpan(text: 'lec6_4_38'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
              ),
            ),
            sizedBoxHigh(),
              Text(
              'lec6_4_39'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20)
            ),
            sizedBoxLow(),
            Text(
              'lec6_4_40'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxHigh(),
             Text(
              'lec6_4_41'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20)
            ),
            sizedBoxLow(),
            Text(
              'lec6_4_42'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxHigh(),
             Text(
              'lec6_4_43'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20)
            ),
            sizedBoxLow(),
            Text(
              'lec6_4_44'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec6_4_45'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec6_4_46'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec6_4_47'.tr,
              style: Get.textTheme.bodyText1,
            ),
            Center(child: SvgPicture.asset('lec_6_4_svg2'.tr, height: 400,)),
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec6_4_48'.tr),
                    TextSpan(text: 'lec6_4_49'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_4_50'.tr),
                  ]
              ),
            ),
          ],
          title: 'lec6_4_51'.tr,
          subtitle: 'lec6_4_52'.tr,
          color: kblue,
          subtitleColor: kblueDark
        ),
        sizedBoxHigh(),
         Text(
          'lec6_4_53'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_54'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_55'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_56'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_57'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_4_58'.tr),
              TextSpan(text: 'lec6_4_59'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_4_60'.tr),
              TextSpan(text: 'lec6_4_61'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_4_62'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_4_63'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_64'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_65'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_66'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_4_67'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_68'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_69'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_70'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_4_71'.tr),
              TextSpan(text: 'lec6_4_72'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
            ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec6_4_73'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_4_74'.tr),
              TextSpan(text: 'lec6_4_75'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_4_76'.tr),
              TextSpan(text: 'lec6_4_77'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_4_78'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_79'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_4_80'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_4_81'.tr),
              TextSpan(text: 'lec6_4_82'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_83'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_4_84'.tr),
                TextSpan(text: 'lec6_4_85'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_4_86'.tr),
                TextSpan(text: 'lec6_4_87'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_4_88'.tr),
                TextSpan(text: 'lec6_4_89'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_4_90'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_4_91'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1!.copyWith(color: kblue),
              children:  [
                TextSpan(text: 'lec6_4_92'.tr),
                TextSpan(text: '~uIhR6e05B', style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_4_93'.tr),
              TextSpan(text: 'lec6_4_94'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_95'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_4_96'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kred,
            handler: () {
              AuthService().upgradeData('lec6_5');
              Get.off(Lec6_5(title: Headers.theoryHeaders['data'.tr]![5][4]), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}