import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
class PracticalUkraineInfo extends StatelessWidget {
  const PracticalUkraineInfo({
    Key? key,
    required this.title,
    required this.maxSecondsStart,
    required this.maxArrayInterval
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
    pairsController.isChainPractical = true;
    pairsController.isSmallPicturePractical = true;
    pairsController.isLieList = true;
    pairsController.isSmallSizePB = true;
    pairsController.maxDescriptionArrayInterval = 3;
    pairsController.enableCorrection = false;
    pairsController.isExpandableImage = true;
    pairsController.isCustomReferenceList = true;
    pairsController.practicalKey = 'practical3_4';
    pairsController.enableStatistics = false;

    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalChainResult();
    pairsController.countOfOnePass = 13;

    List<List<String>> chains = [
      [
        'Chernivtsi',
        'Ivano-Frankivsk',
        'Zakarpatska',
        'Lviv',
        'Volyn',
        'Rivne',
        'Zhytomyr',
        'Kyiv (capital)',
        'Kyiv',
        'Cherkasy',
        'Vinnytsia',
        'Khmelnytskyi',
        'Ternopil',
      ],
      [
        'Chernihiv',
        'Sumy',
        'Poltava',
        'Kirovohrad',
        'Dnipropetrovsk',
        'Kharkiv',
        'Luhansk',
        'Donetsk',
        'Zaporizhzhia',
        'Kherson',
        'Mykolaiv',
        'Odessa',
      ]
    ];

    List<String> descriptionList = [
      'It sounds like Chernobyl. Imagine the Chernobyl Nuclear Power Plant right in the center on Independence Square',
      'It sound like Frankenstein. Imagine how Frankenstein jumps on this nuclear power plant, and then breaks it in half',
      'I encode by sound - 6ix9ine (zaza) wrapped in a carpet. No one knows why, but Frankenstein takes it like a cigarette and starts smoking',
      'Love Lion. He saves 6ix9ine by grabbing it with his teeth and then starts licking it, showing his love',
      'And then this lion climbs on a huge cube (volumetric)',
      'River. And then the perspective moves out from the cube, and it turns out that this cube is floating on the river',
      'It would seem that this cube would have floated forever, if not for the giraffe, who pulled the cube to the shore with his long neck',
      'And suddenly a kiwi falls out of the sky, which swoops on the giraffe\'s head and goes down his neck like a barbecue on a skewer.',
      'And the second kiwi swoops on the giraffe',
      'The giraffe begins to twist its neck in a circle in order to get rid of the kiwi. When he reaches the maximum speed, he throws the kiwi directly onto the roulette of the CASino, at the top of which is a CHERry.',
      'Winnie Pooh was playing at the casino. The giraffe ruined his game. Vinnie breaks the roulette wheel in a rage.',
      'KM - kilometers - speedometer. Elite - gold speedometer. Winnie takes out this golden speedometer and starts rotating the arrow, which quickly breaks it',
      'For this, he is shot by terrorists',
      'These terrorists are attacked by cherry bees (hive), which have cherries instead of wings',
      'These bees begin to multiply, and new ones appear with their cherries, their SUM increases',
      'Then, the POLice arrive and shoot these bees',
      'In a police car, a ROVer is being KEpt hostage',
      'PROPErty falls on this police car',
      'A CAR-CAFE (something like a food-track) moves into this property',
      'Usually a food-car has a sign of some product on top. For example, a hotdog. This food-car has LUGGAGE on top',
      'We open the luggage, and DONALD Duck jumps out',
      'Donald Duck eating PORRIDGE',
      'What falls on the porridge? Big KERnel',
      'On the top - microphone',
      'Microphone awarded with orders',
    ];

    pairsController.chains.addAll(chains);
    pairsController.lieValues.addAll(chains[0]);
    pairsController.lieValues.addAll(chains[1]);
    pairsController.descriptionList.addAll(descriptionList);

    for(int i = 1; i <= 25; i++) {
      pairsController.paths.add('assets/ukraine/ukraine$i.svg');
    }

    pairsController.referencesList.add('Independence square');
    pairsController.referencesList.add('Ternopil'); // Ивановская

    for(int i = 0; i < chains.length; i++) {
      for(int j = 0; j < chains[i].length; j++) {
        pairsController.chain.add(chains[i][j]);
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
                'In this task, you will need to memorize a sequence of 25 administrative units of Ukraine using the film method.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'In this task, you have to encode and represent the same way as it is written in the hints.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'How will we memorize',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'We will memorize by location:',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              const Center(child: SizedBox(height: 300,child: ExpansionImage(path: 'assets/ukraine/ukraine_number.svg',isSvg: true,))),
              sizedBoxLow(),
              Text(
                'Of the 25 administrative units - 24 oblasts, and 1 city with a special status (capital) - Kiev.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Since 25 is a lot, we will memorize 2 chains of oblasts with repetition. But it will be one the sequence of the film.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'To memorize the endings faster, it is advisable to pronounce the name of the oblasts 3 times aloud.',
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



