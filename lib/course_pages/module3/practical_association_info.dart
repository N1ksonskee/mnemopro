import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/abstract_words.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';


class PracticalAssociationInfo extends StatelessWidget {
  const PracticalAssociationInfo({Key? key,
    required this.title,
    required this.maxSecondsStart,
    required this.chainCount,
  }) : super(key: key);


  final String title;
  final int maxSecondsStart;
  final int chainCount;


  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.isNotCheckPractical = true;
    pairsController.isSingleChain = true;
    pairsController.isChainPractical = true;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.practicalKey = 'practical3_1';


    List<String> words = AbstractWords.words['data'.tr]!.toList();
    words.shuffle();
    for(int i = 0; i < chainCount; i++) {
      pairsController.chain.add(words[i]);
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(
            title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true,),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() => Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'practical3_1_1'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Row(
              children: [
                Expanded(child: SvgPicture.asset('assets/purpose.svg'), flex: 1,),
                const SizedBox(width: 16,),
                Expanded(
                  flex: 3,
                  child: RichText(
                    text: TextSpan(
                        style: Get.textTheme.bodyText1,
                        children: [
                          TextSpan(text: 'practical3_1_2'.tr),
                          TextSpan(text: 'practical3_1_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'practical3_1_4'.tr),
                          TextSpan(text: 'practical3_1_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        ]
                    ),
                  ),
                )
              ],
            ),
            sizedBoxHigh(),
            Text(
              'practical3_1_6'.tr,
              style: Get.textTheme.headline2,
            ),
            sizedBoxLow(),
            Text(
              'practical3_1_7'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'practical3_1_8'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'practical3_1_9'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'practical3_1_10'.tr,
              style: Get.textTheme.bodyText1,
            ),
          ],
        ),
        CustomButton(
            title: 'start'.tr,
            color: kblue,
            handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
        )
      ]
  );
}

