import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/words.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/utils/make_chain.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';

class PracticalChainInfo extends StatelessWidget {

  const PracticalChainInfo({
    Key? key,
    required this.title,
    required this.chainCount,
    required this.maxSecondsStart,
    required this.maxArrayInterval,
    this.countOfOnePass = 10,
  }) : super(key: key);


  final String title;
  final int chainCount;
  final int maxSecondsStart;
  final int maxArrayInterval;
  final int countOfOnePass;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.maxArrayInterval = maxArrayInterval;
    pairsController.isChainPractical = true;
    pairsController.isLieList = true;
    pairsController.countOfOnePass = countOfOnePass;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalChainResult();

    int chainsLength = 0;

    if(chainCount == 30) {
      pairsController.practicalKey = 'practical2_1';
      chainsLength = 3;
    } else if(chainCount == 50) {
      pairsController.practicalKey = 'practical2_4';
      chainsLength = 5;
    } else if(chainCount == 100) {
      pairsController.practicalKey = 'practical2_5';
      chainsLength = 5;
    }


    pairsController.chain = makeChain(chainCount: chainCount, words: Words.words['data'.tr]);
    pairsController.lieValues.addAll(pairsController.chain);

    pairsController.chains = List.generate(chainsLength, (index) => []);

    for(int i = 0, k = 0; i < chainsLength; i++) {
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
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    final PairsController pairsController = Get.find<PairsController>();
    String word = chainCount <= 30 ? 'practical2_1_1'.tr : 'practical2_1_2'.tr;
    String word2 = chainCount <= 30 ? 'practical2_1_3'.tr : 'practical2_1_4'.tr;
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'practical2_1_5'.tr),
              TextSpan(text: '$chainCount ${'practical2_1_6'.tr}', style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'practical2_1_7'.trParams({'count1': (chainCount~/pairsController.countOfOnePass).toString(), 'word': word, 'count2': pairsController.countOfOnePass.toString(), 'count3': (chainCount~/pairsController.countOfOnePass).toString(), 'count4': word2}),
        style: Get.textTheme.bodyText1,
      ),
      chainCount >= 100 ? sizedBoxLow() : Container(),
      chainCount >= 100 ? Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
          ),
          const SizedBox(width: 16,),
          Expanded(
              child: RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'practical2_1_8'.trParams({'count': pairsController.countOfOnePass.toString()})),
                    TextSpan(text: 'practical2_1_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]
                ),
              )
          )
        ],
      ) : Container(),
      sizedBoxHigh(),
      Text(
        'practical2_1_10'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'practical2_1_11'.tr,
        style: Get.textTheme.bodyText1,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kblue),
          ),
          const SizedBox(width: 16,),
          Expanded(
              child: Text(
                'practical2_1_12'.tr,
                style: Get.textTheme.bodyText1,
              )
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kblue),
          ),
          const SizedBox(width: 16,),
          Expanded(
            child: chainCount <= 30 ? Text(
              'practical2_1_13'.tr,
              style: Get.textTheme.bodyText1,
            ) : Text(
              'practical2_1_14'.tr,
              style: Get.textTheme.bodyText1,
            )
          )
        ],
      ),
      sizedBoxLow(),
      chainCount <= 30
        ? const ExpansionImage(path: 'assets/beach.jpg')
        : chainCount <= 50
          ? const ExpansionImage(path: 'assets/home.jpeg')
          : const ExpansionImage(path: 'assets/cafe.jpg'),
      sizedBoxLow(),
      Text(
        'practical2_1_15'.tr,
        style: const TextStyle(
          fontSize: 16,
          color: kblueDark
        ),
        textAlign: TextAlign.center,
      ),
      sizedBoxHigh(),
      sizedBoxHigh(),
      Text(
        'practical2_1_16'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'practical2_1_17'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'practical2_1_18'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
          ),
          const SizedBox(width: 16,),
          Expanded(
              child: Text(
                'practical2_1_19'.tr,
                style: Get.textTheme.bodyText1,
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
            '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kblue),
          ),
          const SizedBox(width: 16,),
          Expanded(
            child:  Text(
              'practical2_1_20'.tr,
              style: Get.textTheme.bodyText1,
            ),
          )
        ],
      ),
      sizedBoxHigh(),
      Text(
        'practical2_1_21'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      RichText(
        text: TextSpan(
          style: Get.textTheme.bodyText1,
          children: [
            TextSpan(text: 'practical2_1_22'.tr),
            TextSpan(text: 'practical2_1_23'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
          ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'practical2_1_24'.trParams({'count': (pairsController.maxArrayInterval - 1).toString(), 'c': pairsController.chain.length.toString()}),
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'practical2_1_25'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      RichText(
        text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'practical2_1_26'.tr),
              TextSpan(text: 'practical2_1_27'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical2_1_28'.tr),
            ]
        ),
      ),
      sizedBoxLow(),
      Text(
        'practical2_1_29'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'practical2_1_30'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxLow(),
      Text(
        'practical2_1_31'.trParams({'count': pairsController.chain.length.toString()}),
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Row(
        children: [
          Text(
            'practical2_1_32'.tr,
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
              TextSpan(text: 'practical2_1_33'.tr),
              TextSpan(text: 'practical2_1_34'.trParams({'count': pairsController.maxSecondsStart.toString()}), style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical2_1_35'.tr),
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
    ]
  );
  }
}


