import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/words.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/utils/make_pairs.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
class PracticalPairsInfo extends StatelessWidget {
  const PracticalPairsInfo({
    Key? key,
    required this.title,
    required this.pairsCount,
    required this.maxSecondsStart,
    required this.maxArrayInterval,
    this.maxGlobalArrayInterval = 1,
    this.isLastSetGlobal = true,
  }) : super(key: key);

  final String title;
  final int pairsCount;
  final int maxSecondsStart;
  final int maxArrayInterval;
  final int maxGlobalArrayInterval;
  final bool isLastSetGlobal;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.isLieList = true;
    pairsController.lieValues = Words.words['data'.tr]!;
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.maxArrayInterval = maxArrayInterval;
    pairsController.maxGlobalArrayInterval = maxGlobalArrayInterval;
    pairsController.isLastSetGlobal = isLastSetGlobal;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();

    if(pairsCount == 50) {
      pairsController.practicalKey = 'practical1_2';
    } else if(pairsCount == 100) {
      pairsController.practicalKey = 'practical1_3';
    } else if(pairsCount == 150) {
      pairsController.practicalKey = 'practical1_4';
    }

    pairsController.pairs = makePairs(count: pairsCount, words: Words.words['data'.tr]!);


    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(
            title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true),
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
            children: [
              TextSpan(text: 'practical1_2_1'.tr),
              TextSpan(text: '$pairsCount', style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical1_2_2'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'practical1_2_3'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'practical1_2_4'.tr),
                const TextSpan(text: '10', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'practical1_2_5'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'practical1_2_6'.tr),
                TextSpan(text: 'practical1_2_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'practical1_2_8'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'practical1_2_9'.trParams({'pairsCount': pairsCount.toString()}),
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical1_2_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'practical1_2_11'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'practical1_2_12'.tr),
                TextSpan(text: 'practical1_2_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'practical1_2_14'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'practical1_2_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Row(
          children: [
            Text(
              'exec_time'.tr,
              style: Get.textTheme.headline2,
            ),
            const SizedBox(width: 10,),
            const Icon(
              Icons.timer,
              color: Colors.black,
              size: 40
            )
          ],
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'practical1_2_16'.tr),
                TextSpan(text: '$maxSecondsStart', style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'practical1_2_17'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'practical1_2_18'.tr),
                TextSpan(text: 'next'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
              ]
          ),
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'start'.tr,
            color: kblue,
            handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
        ),
      ]
  );
}