import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/course_pages/module6/practic_en_words_info.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Lec6_3 extends StatelessWidget {
  const Lec6_3({Key? key, required this.title}) : super(key: key);
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
              TextSpan(text: 'lec6_3_1'.tr),
              TextSpan(text: 'lec6_3_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_3'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_4'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_3_5'.tr),
              TextSpan(text: 'lec6_3_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ':')
            ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec6_3_7'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec6_3_8'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec6_3_9'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec6_3_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec6_3_11'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec6_3_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_13'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_3_14'.tr),
              TextSpan(text: 'lec6_3_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_3_16'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec6_3_17'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kred),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_3_18'.tr),
              TextSpan(text: 'lec6_3_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_3_20'.tr),
              TextSpan(text: 'lec6_3_21'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_3_22'.tr),
              TextSpan(text: 'lec6_3_23'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec6_3_24'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kred),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_3_25'.tr),
                TextSpan(text: 'lec6_3_26'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_3_27'.tr),
                TextSpan(text: 'lec6_3_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_3_29'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec6_3_30'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kgrey),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_3_31'.tr),
              TextSpan(text: 'lec6_3_32'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_3_33'.tr),
              TextSpan(text: 'lec6_3_34'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_35'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_36'.tr,
          style: Get.textTheme.bodyText1,
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
                child:  RichText(
                  text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children:  [
                        TextSpan(text: 'lec6_3_37'.tr),
                        TextSpan(text: 'lec6_3_38'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      ]
                  ),
                ),
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
              child:  RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'lec6_3_39'.tr),
                      TextSpan(text: 'lec6_3_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'lec6_3_41'.tr),
                    ]
                ),
              ),
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec6_3_42'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec6_3_43'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_44'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_45'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_3_46'.tr),
              TextSpan(text: 'lec6_3_47'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_3_48'.tr)
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec6_3_49'.tr),
                TextSpan(text: 'lec6_3_50'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_3_51'.tr),
                TextSpan(text: 'lec6_3_52'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec6_3_53'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_54'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child:  Text(
                'lec6_3_55'.tr,
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec6_3_56'.tr,
          style: Get.textTheme.bodyText1,
        ),
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
                child:  Text(
                  'lec6_3_57'.tr,
                  style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
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
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child:  Text(
                  'lec6_3_58'.tr,
                  style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
                )
            )
          ],
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_3_59'.tr),
              TextSpan(text: 'lec6_3_60'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec6_3_61'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_62'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec6_3_63'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec6_3_64'.tr),
              TextSpan(text: 'lec6_3_65'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec6_3_66'.tr)
            ]
          ),
        ),
        'data'.tr == 'ru' ? Column(
          children: [
            sizedBoxHigh(),
            const Text(
              'Пример 1',
              style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: const [
                    TextSpan(text: 'Вам нужно запомнить слово '),
                    TextSpan(text: 'chest of drawers - комод', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '. Вы знаете, что '),
                    TextSpan(text: 'chest', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' - это '),
                    TextSpan(text: 'сундук', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '. Вы также знаете, что '),
                    TextSpan(text: 'drawers', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' - это '),
                    TextSpan(text: 'подштанники', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '. Тогда вы связываете комод с сундуком в котором подштанники.')
                  ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'На самом деле, здесь можно запомнить, включив логику. Ведь в каком-то смысле, комод - это сундук, в котором лежат подштанники.',
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'Не все иностранные слова нужно запоминать мнемотехникой, какие-то вы будете запоминать автоматически, но для этого нужно набрать словарный запас. Мнемотехника нужна там, где мы не можем никак связать информацию с тем, что мы уже знаем о ней.',
              style: Get.textTheme.bodyText1,
            ),
          ],
        ) : Container(),

       'data'.tr == 'ru' ? Column(
         children: [
           sizedBoxHigh(),
           const Text(
             'Пример 2',
             style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
           ),
           sizedBoxLow(),
           RichText(
             text: TextSpan(
                 style: Get.textTheme.bodyText1,
                 children: const [
                   TextSpan(text: 'Вы знаете что '),
                   TextSpan(text: 'pea', style: TextStyle(fontWeight: FontWeight.bold)),
                   TextSpan(text: ' - это '),
                   TextSpan(text: 'горох', style: TextStyle(fontWeight: FontWeight.bold)),
                   TextSpan(text: '. И вам нужно закодировать слово '),
                   TextSpan(text: 'peach', style: TextStyle(fontWeight: FontWeight.bold)),
                   TextSpan(text: ' ('),
                   TextSpan(text: 'персик', style: TextStyle(fontWeight: FontWeight.bold)),
                   TextSpan(text: '). Или наоборот. То есть, вы можете использовать одно из этих слов, для кодирования другого.')
                 ]
             ),
           ),
         ],
       ) : Container(),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical6_2');
              Get.off(PracticalEnWordsInfo(title: Headers.practicalHeaders['data'.tr]![5][1], maxSecondsStart: 30, maxArrayInterval: 4), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}