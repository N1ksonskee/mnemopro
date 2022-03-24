import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/table.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practic_pages/exercise_codes_list.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';

class PracticalTableInfo extends StatelessWidget {
  const PracticalTableInfo({
    Key? key, required this.title,
    required this.pairsCount,
    required this.maxArrayInterval,
    required this.maxSecondsStart,
  }) : super(key: key);

  final String title;
  final int pairsCount;
  final int maxArrayInterval;
  final int maxSecondsStart;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.pairsContainsNumbers = true;
    pairsController.isToggleNumbers = true;
    pairsController.maxArrayInterval = maxArrayInterval;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();
    pairsController.practicalKey = 'practical4_4';

    pairsController.pairs = List.generate(pairsCount, (_) => []);

    for(int i = 0; i < pairsCount; i++) {
      pairsController.pairs[i].add('${i + 1}');
      pairsController.pairs[i].add('${TableM.tableElementsSignsList[i]} (${TableM.elements['data'.tr]![i]})');
    }

    for(int i = 0;i < pairsController.pairs.length; i++) {
     print(pairsController.pairs[i]);
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
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
          'practical4_4_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical4_4_2'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        sizedBoxHigh(),
        const SizedBox(height: 100 ,child: ExpansionImage(path: 'assets/table_30.svg', isSvg: true)),
        sizedBoxHigh(),
        sizedBoxHigh(),
        Text(
          'practical4_4_3'.tr,
          style: Get.textTheme.headline2!.copyWith(color: kred),
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'practical4_4_4'.tr),
                TextSpan(text: 'practical4_4_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'practical4_4_6'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        OutlinedButton(
          onPressed: () => Get.off(ExerciseCodesList(title: 'learn_nac'.tr,), transition: Transition.rightToLeft),
          child: Text(
            'learn_nac'.tr,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: kblue ),
          ),
          style: OutlinedButton.styleFrom(shape: const StadiumBorder(), side: const BorderSide(color: kblue), padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
        ),
        sizedBoxHigh(),
        Text(
          'practical4_4_7'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'practical4_4_8'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical4_4_9'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Row(
          children: [
            Text(
              'practical4_4_10'.tr,
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
            children:  [
              TextSpan(text: 'practical4_4_11'.tr),
              TextSpan(text: 'practical4_4_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical4_4_13'.tr),
              TextSpan(text: 'next'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'start'.tr,
            color: kblue,
            handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
        )
      ]
  );
}