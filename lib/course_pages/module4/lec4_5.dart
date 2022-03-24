import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/course_pages/module4/practical_table_codes_info.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';

class Lec4_5 extends StatelessWidget {
  const Lec4_5({Key? key, required this.title}) : super(key: key);
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
                TextSpan(text: 'lec4_5_1'.tr),
                TextSpan(text: 'lec4_5_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: ':')
              ]
            ),
          ),
          sizedBoxHigh(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
              ),
              const SizedBox(width: 16,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'lec4_5_3'.tr,
                        style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 8,),
                      RichText(
                        text: TextSpan(
                          style: Get.textTheme.bodyText1,
                          children:  [
                            TextSpan(text: 'lec4_5_4'.tr),
                            TextSpan(text: 'lec4_5_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'lec4_5_6'.tr),
                          ]
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
          sizedBoxLow(),
          Text(
            'lec4_5_7'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          Center(child: SvgPicture.asset('assets/newspaper-magnifier.svg', height: 200,)),
          sizedBoxHigh(),
          Text(
            'lec4_5_8'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec4_5_9'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec4_5_10'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Center(child: SvgPicture.asset('lec4_5_svg1'.tr, height: 300,)),
          sizedBoxHigh(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
              ),
              const SizedBox(width: 16,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'lec4_5_11'.tr,
                        style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 8,),
                      RichText(
                        text: TextSpan(
                            style: Get.textTheme.bodyText1,
                            children:  [
                              TextSpan(text: 'lec4_5_12'.tr),
                              TextSpan(text: 'lec4_5_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                            ]
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
          sizedBoxLow(),
          Text(
            'lec4_5_14'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec4_5_15'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          'data'.tr == 'ru' ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'На схеме ниже показано, что намного эффективнее заниматься час в день втечение месяца, чем заниматься час в неделю втечение 7,5 месяцев. Почему? Потому что во 2 варианте навык забывается быстрее чем осваивается.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              const SizedBox(height: 150, child:  ExpansionImage(path: 'assets/intensivnost.svg', isSvg: true,)),
              sizedBoxHigh(),
            ],
          ) : Container(),
          sizedBoxLow(),
          Text(
            'lec4_5_16'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Center(child: SvgPicture.asset('assets/intensivnost2.svg', height: 300,)),
          sizedBoxLow(),
          Text(
            'lec4_5_17'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Center(child: SvgPicture.asset('assets/intensivnost3.svg', height: 300,)),
          sizedBoxHigh(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
              ),
              const SizedBox(width: 16,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'lec4_5_18'.tr,
                        style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 8,),
                      Text(
                        'lec4_5_19'.tr,
                        style: Get.textTheme.bodyText1,
                      )
                    ],
                  )
              )
            ],
          ),
          sizedBoxLow(),
          Text(
            'lec4_5_20'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec4_5_21'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          CustomButton(
              title: 'next'.tr,
              color: kblue,
              handler: () {
                AuthService().upgradeData('practical4_3');
                Get.off(PracticalTableCodesInfo(title: Headers.practicalHeaders['data'.tr]![3][2],), transition: Transition.rightToLeft);
              }
          )

        ]
  );
}