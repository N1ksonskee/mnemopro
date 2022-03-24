import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/main.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';

class Lec6_5 extends StatelessWidget {
  const Lec6_5({Key? key, required this.title}) : super(key: key);
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
              TextSpan(text: 'lec6_5_1'.tr),
              TextSpan(text: 'lec6_5_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_5_3'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_4'.tr),
                TextSpan(text: 'lec6_5_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_6'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_7'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_8'.tr),
                TextSpan(text: 'lec6_5_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_5_10'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_11'.tr),
                TextSpan(text: 'lec6_5_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ':'),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_14'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_5_16'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_5_17'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_5_18'.tr),
              TextSpan(text: 'lec6_5_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_5_20'.tr),
              TextSpan(text: 'lec6_5_21'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_5_22'.tr),
              TextSpan(text: 'lec6_5_23'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_5_24'.tr),
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
                  TextSpan(text: 'lec6_5_25'.tr),
                  TextSpan(text: 'lec6_5_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec6_5_27'.tr),
                  TextSpan(text: 'lec6_5_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec6_5_29'.tr),
                ]
              ),
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec6_5_30'.tr),
                    TextSpan(text: 'lec6_5_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_5_32'.tr),
                    TextSpan(text: 'lec6_5_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_5_34'.tr),
                  ]
              ),
            ),
            sizedBoxHigh(),
             Text(
              'lec6_5_35'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold,color: kblue, fontSize: 20),
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_36'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_37'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Center(child: SvgPicture.asset('lec6_5_svg1'.tr, height: 300,)),
            sizedBoxHigh(),
            Text(
              'lec6_5_38'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Center(child: SvgPicture.asset('lec6_5_svg2'.tr, height: 300,)),
          ],
          title: 'lec6_5_39'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec6_5_40'.tr),
                    TextSpan(text: 'lec6_5_41'.tr,  style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_5_42'.tr),
                    TextSpan(text: 'lec6_5_43'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_5_44'.tr),
                  ]
              ),
            ),
            sizedBoxHigh(),
             Text(
              'lec6_5_45'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_46'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxHigh(),
             Text(
              'lec6_5_47'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_48'.tr,
              style: Get.textTheme.bodyText1,
            ),
          ],
          title: 'lec6_5_49'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
          subtitleColor: kblueDark
        ),
        sizedBoxHigh(),
        Text(
          'lec6_5_50'.tr,
          style: Get.textTheme.headline2,
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
                      TextSpan(text: 'lec6_5_51'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'lec6_5_52'.tr),
                      TextSpan(text: 'lec6_5_53'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
            )
          ],
        ),
        sizedBoxHigh(),
        Text(
          'lec6_5_54'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_55'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_56'.tr),
                TextSpan(text: 'lec6_5_57'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_58'.tr),
                TextSpan(text: 'lec6_5_59'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_60'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_61'.tr),
                TextSpan(text: 'lec6_5_62'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_63'.tr),
                TextSpan(text: 'lec6_5_64'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_65'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_66'.tr),
                TextSpan(text: 'lec6_5_67'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_68'.tr),
                TextSpan(text: 'lec6_5_69'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_70'.tr),
                TextSpan(text: 'lec6_5_71'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_72'.tr)
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_5_73'.tr),
              TextSpan(text: 'lec6_5_74'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_5_75'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_76'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/downloading.svg', height: 500,)),
        sizedBoxHigh(),
        Text(
          'lec6_5_77'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children:  [
                  TextSpan(text: 'lec6_5_78'.tr),
                  TextSpan(text: 'lec6_5_79'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec6_5_80'.tr),
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_81'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_82'.tr,
              style: Get.textTheme.bodyText1,
            )
          ],
          title: 'lec6_5_83'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
          subtitleColor: kblueDark
        ),
        sizedBoxHigh(),
        Text(
          'lec6_5_84'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_5_85'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_86'.tr),
                TextSpan(text: 'lec6_5_87'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_88'.tr),
                TextSpan(text: 'lec6_5_89'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_90'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_91'.tr),
                TextSpan(text: 'lec6_5_92'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_93'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_94'.tr),
                TextSpan(text: 'lec6_5_95'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_96'.tr),
                TextSpan(text: 'lec6_5_97'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_98'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_99'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic),
        ),
        sizedBoxHigh(),
        sizedBoxHigh(),
        const Center(child: SizedBox(height: 200 ,child: ExpansionImage(path: 'assets/saving.svg', isSvg: true,))),
        sizedBoxHigh(),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children:  [
                  TextSpan(text: 'lec6_5_100'.tr),
                  TextSpan(text: 'lec6_5_101'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec6_5_102'.tr),
                  TextSpan(text: 'lec6_5_103'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_104'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_105'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxHigh(),
             Text(
              'lec6_5_106'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_107'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
          ],
          title: 'lec6_5_108'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
          subtitleColor: kblueDark
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children:  [
                  TextSpan(text: 'lec6_5_109'.tr),
                  TextSpan(text: 'lec6_5_110'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec6_5_111'.tr),
                  TextSpan(text: 'lec6_5_112'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec6_5_113'.tr),
                  TextSpan(text: 'lec6_5_114'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'lec6_5_115'.tr),
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'lec6_5_116'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec6_5_117'.tr),
                    TextSpan(text: 'lec6_5_118'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_5_119'.tr),
                    TextSpan(text: 'lec6_5_120'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'lec6_5_121'.tr),
                  ]
              ),
            ),
            sizedBoxLow(),
          ],
          title: 'lec6_5_122'.tr,
          subtitle: 'important'.tr,
          color: kred,
          subtitleColor: kredDark
        ),
        sizedBoxHigh(),
        Text(
          'lec6_5_123'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_5_124'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_125'.tr),
                TextSpan(text: 'lec6_5_126'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_127'.tr),
                TextSpan(text: 'lec6_5_128'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_5_129'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_130'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_131'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_5_132'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'finish'.tr,
            color: kred,
            handler: () {
              if(!GetStorage().read('lec7_1')) {
                AuthService().upgradeData('lec7_1');
                AuthService().upgradeData('names');
                Get.offAll(const HomePage(), arguments: '7',transition: Transition.leftToRight);
              } else {
                Get.back();
              }
            }
        )
      ]
  );
}