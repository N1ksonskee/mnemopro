import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/words.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/pracal_locii_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/utils/make_chain.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class PracticalLociiInfo extends StatelessWidget {
  const PracticalLociiInfo({
    Key? key,
    required this.title,
    required this.chainCount,
    required this.maxSecondsStart,
    required this.maxArrayInterval
  }) : super(key: key);

  final String title;
  final int chainCount;
  final int maxSecondsStart;
  final int maxArrayInterval;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.maxArrayInterval = maxArrayInterval;
    pairsController.isChainPractical = true;
    pairsController.isLieList = true;
    pairsController.isLociiPractical = true;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalLociiResult();
    pairsController.practicalKey = 'practical4_1';
    pairsController.enableStatistics = false;


    pairsController.chain = makeChain(chainCount: chainCount, words: Words.words['data'.tr]!);
    pairsController.lieValues.addAll(pairsController.chain);
    pairsController.chains = List.generate(3, (index) => []);

    for(int i = 0, k = 0; i < 3; i++) {
      for(int j = 0; j < pairsController.countOfOnePass; j++) {
        pairsController.chains[i].add(pairsController.chain[k]);
        print(pairsController.chain[k]);
        k++;
      }
      pairsController.chainsToFix.add(ChainToFix(chain: pairsController.chains[i]));
    }


    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(
            title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true,),
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
                'practical4_1_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical4_1_2'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical4_1_3'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxLow(),
              Text(
                'practical4_1_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical4_1_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical4_1_6'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical4_1_7'.tr,
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
                    children:  [
                      TextSpan(text: 'practical4_1_8'.tr),
                      TextSpan(text: 'practical4_1_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical4_1_10'.tr),
                      TextSpan(text: 'next'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
                    ]
                ),
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



