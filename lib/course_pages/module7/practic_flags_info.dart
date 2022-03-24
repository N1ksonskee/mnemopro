import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';


class PracticalFlagsInfo extends StatelessWidget {
  const PracticalFlagsInfo({
    Key? key,
    required this.title,
    required this.maxSecondsStart,
    required this.maxArrayInterval,
  }) : super(key: key);

  final String title;
  final int maxSecondsStart;
  final int maxArrayInterval;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.maxArrayInterval = maxArrayInterval;

    pairsController.isSmallPicturePractical = true;
    pairsController.isSmallSizePB = true;
    pairsController.isFlagsPractical = true;
    pairsController.countOfOnePass = 5;
    pairsController.isOnlyOneValueInCheck = true;
    pairsController.practicalKey = 'practical7_1';
    pairsController.enableStatistics = false;

    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();

    final List<String> paths = [
      'assets/flags/africa/flag6_4.svg',
      'assets/flags/africa/flag6_5.svg',
      'assets/flags/africa/flag6_20.svg',
      'assets/flags/africa/flag6_3.svg',
      'assets/flags/africa/flag6_43.svg',
      'assets/flags/africa/flag6_27.svg',
      'assets/flags/africa/flag6_26.svg',
      'assets/flags/africa/flag6_13.svg',
      'assets/flags/africa/flag6_51.svg',
      'assets/flags/africa/flag6_56.svg',
      'assets/flags/africa/flag6_8.svg',
      'assets/flags/africa/flag6_46.svg',
      'assets/flags/africa/flag6_14.svg',
      'assets/flags/africa/flag6_21.svg',
      'assets/flags/africa/flag6_17.svg',
    ];

    final Map<String, List<String>> countries = {
      'en': [
        'Algeria',
        'Tunisia',
        'Malawi',
        'Morocco',
        'Togo',
        'Lesotho',
        'Eswatini',
        'Somalia',
        'Senegal',
        'Niger',
        'Sudan',
        'Liberia',
        'Kenya',
        'Zambia',
        'Burundi',
      ],
      'ru': [
        'Алжир',
        'Тунис',
        'Малави',
        'Марокко',
        'Того',
        'Лесото',
        'Эсватини',
        'Сомали',
        'Сенегал',
        'Нигер',
        'Судан',
        'Либерия',
        'Кения',
        'Замбия',
        'Бурунди',
      ]
    };

   final Map<String, List<String>> descriptionList = {
     'en': [
        'I encode the country by sound - giraffe. Connect the giraffe with a crescent moon and a star.',
        'Imagine that it\'s a tin can, and there\'s tuna inside. Or that it\'s a tennis racket hitting a tennis ball',
        'mole + awp on this red sun',
        'I encode by the sound - a rocket. I imagine how a rocket is thrust into this star, but it will not get through further',
        'Togs = clothes. Dress up this star',
     ],
     'ru': [
       'Кодирую страну по звучанию - жираф. Свяжите жирафа с полумесяцем и звездой.',
       'Представьте что это консервная банка, а внутри тунец. Или что это теннисная ракетка, отбивающая теннисный мяч',
       'Я представлю как мальчишка ставит вилку на красное солнце',
       'Кодирую по звучанию - морковь. Представляю как морковь засовывают в эту звезду, но дальше она не пролазеет',
       'Третья буква похоже на английскую r. Поэтому я представляю как Тор летит с молотом прям через эту звезду слева-сверху, а там пустота (белый фон)'
     ]
   };


    for(int i = 0; i < countries['data'.tr]!.length; i++) {
      pairsController.pairs.add([countries['data'.tr]![i], paths[i]]);
    }

    for(int i = 0; i < descriptionList['data'.tr]!.length; i++) {
      pairsController.descriptionList.add(descriptionList['data'.tr]![i]);
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true,),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: _buildBody()
      ),
    );
  }

  Widget _buildBody() => Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical7_1_1'.tr),
                      TextSpan(text: 'practical7_1_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical7_1_3'.tr),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical7_1_4'.tr),
                      TextSpan(text: 'practical7_1_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical7_1_6'.tr),
                    ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'practical7_1_7'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical7_1_8'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical7_1_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical7_1_10'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              CustomButton(
                  title: 'next'.tr,
                  color: kblue,
                  handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
              )
            ],
          ),
        )
      ]
  );
}



