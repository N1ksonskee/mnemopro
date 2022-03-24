import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

class PracticalStructInfo extends StatelessWidget {
  const PracticalStructInfo({Key? key,
    required this.title,
    required this.chainCount,
    required this.maxSecondsStart,
    required this.maxArrayInterval
  }) : super(key: key);


  final String title;
  final int chainCount;
  final int maxSecondsStart;
  final int maxArrayInterval; //  1 + 6 + 1

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.maxArrayInterval = maxArrayInterval;
    pairsController.isChainPractical = true;
    pairsController.isLieList = true;
    pairsController.countOfOnePass = 5;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalLociiResult();
    pairsController.practicalKey = 'practical2_3';
    pairsController.enableCorrection = false;

    final Map<String, List<String>> mainChain = {
      'en': [
        'chick',
        'car',
        'computer mouse',
        'swing',
        'yacht',
        'chair',
      ],
      'ru': [
        'циплёнок',
        'машина',
        'компьютерная мышь',
        'качели',
        'яхта',
        'стул',
      ]
    };

    final Map<String, List<String>> descriptionList = {
      'en': [
        'paw, leg, wing, beak, eye',
        'Front headlight, hood, windshield, roof, trunk.',
        'type-C interface, cord, left button, wheel,right button.'
      ],
      'ru': [
        'лапа, нога, крыло, клюв, глаз',
        'Богатый на образы объект: передняя фара, капот, лобовое стекло, крыша, багажник.',
        'type-С интерфейс, шнур, левая кнопка, колесико,правая кнопка.'
      ]
    };



    pairsController.mainChain.addAll(mainChain['data'.tr]!);
    pairsController.descriptionList.addAll(descriptionList['data'.tr]!);
    pairsController.lieValues.addAll(pairsController.mainChain);
    pairsController.chain = makeChain(chainCount: chainCount, words: Words.words['data'.tr]);

    pairsController.chains = List.generate(6, (index) => []);

    for(int i = 0, k = 0; i < 6; i++) {
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
          'practical2_3_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/matreshka-chain.svg', height: 600,)),
        sizedBoxHigh(),
        Text(
          'practical2_3_2'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'practical2_3_3'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'practical2_3_4'.tr),
                    TextSpan(text: 'practical2_3_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical2_3_6'.tr),
                  ]
                ),
              )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'practical2_3_7'.tr,
          style: Get.textTheme.bodyText1,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text('practical2_3_8'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text('practical2_3_9'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'practical2_3_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical2_3_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text('practical2_3_12'.tr, style: Get.textTheme.bodyText1,)
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'practical2_3_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'practical2_3_14'.tr,
          style: Get.textTheme.headline2,
        ),
        SvgPicture.asset('assets/practic-scheme-chain-matreshka.svg', height: 400,),
        sizedBoxHigh(),
        Text(
          'practical2_3_15'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxLow(),
        Text(
          'practical2_3_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'practical2_3_17'.tr),
              TextSpan(text: 'practical2_3_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical2_3_19'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'practical2_3_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'practical2_3_21'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'practical2_3_22'.tr,
          style: Get.textTheme.bodyText1,
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

