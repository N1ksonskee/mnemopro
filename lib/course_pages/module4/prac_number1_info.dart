import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class PracticalNumber1Info extends StatelessWidget {
  const PracticalNumber1Info({
    Key? key,
    required this.title,
    required this.maxSecondsStart,
  }) : super(key: key);

  final String title;
  final int maxSecondsStart;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.isLastSet = true;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();
    pairsController.practicalKey = 'practical4_2';
    pairsController.enableStatistics = false;

    final Map<String, List<List<String>>> pairs = {
      'ru': [
        ['0', 'отвёртка'],
        ['1', 'окно'],
        ['2', 'ведро'],
        ['3', 'овца'],
        ['4', 'бутылка'],
        ['5', 'лошадь'],
        ['6', 'лампа'],
        ['7', 'ложка'],
        ['8', 'кружка'],
        ['9', 'шляпа'],
      ],
      'en': [
        ['0', 'screwdriver'],
        ['1', 'window'],
        ['2', 'bucket'],
        ['3', 'sheep'],
        ['4', 'bottle'],
        ['5', 'horse'],
        ['6', 'lamp'],
        ['7', 'spoon'],
        ['8', 'mug'],
        ['9', 'hat'],
      ],
    };



    final Map<String, List<String>> descriptionList = {
      'en': [
        '0 - it\'s a ball. Imagine how a screwdriver pierces the ball.',
        '1 - it\'s an arrow. Imagine how an arrow pierces a window.',
        '2 - it\'s an swan. Imagine a swan with a bucket on its head.',
        '3 - it\'s a gnawed apple. Imagine how an apple was tied on the sheep\'s back, and she turns around and bites it.',
        ],
      'ru': [
        '0 - это мяч. Представьте как отвертка протыкает мяч.',
        '1 - это стрела. Представьте как стрела пронзает окно.',
        '2 - это лебедь. Представьте лебедя с ведром на голове.',
        '3 - это обгрызенное яблоко. Представьте как на спину овцы привязали яблоко, а она разворачивается и грызет его.',
      ]
    };

    for(int i = 0; i < pairs['data'.tr]!.length; i++) {
      pairsController.pairs.add(pairs['data'.tr]![i]);
    }

    for(int i = 0; i < descriptionList['data'.tr]!.length; i++) {
      pairsController.descriptionList.add(descriptionList['data'.tr]![i]);
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: _buildBody())
      ,
    );
  }

  Widget _buildBody() => Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'practical4_2_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical4_2_2'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxLow(),
              Text(
                'practical4_2_3'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical4_2_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical4_2_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical4_2_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical4_2_7'.tr),
                  ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'practical4_2_8'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical4_2_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'start'.tr,
                  color: kblue,
                  handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
              )
            ],
          ),
        )
      ]
  );
}



