import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/urls.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class PracticalNamesInfo extends StatelessWidget {
  const PracticalNamesInfo({
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
    pairsController.maxSecondsStart = 40;
    pairsController.maxArrayInterval = maxArrayInterval;

    pairsController.isOnlyOneValueInCheck = true;
    pairsController.isNamePractical = true;
    pairsController.isSmallSizePB = true;
    pairsController.isBigPicturePractical = true;

    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();

    pairsController.practicalKey = 'practical6_1';


   setPairs(List<String> names) {
      try {
        pairsController.pairs.add([
          names[0],
          Urls.maleUrls[0],
          'male'
        ]);
        pairsController.pairs.add([
          names[1],
          Urls.maleUrls[1],
          'male'
        ]);
        pairsController.pairs.add([
          names[2],
          Urls.femaleUrls[0],
          'female'
        ]);
        pairsController.pairs.add([
          names[3],
          Urls.maleUrls[2],
          'male'
        ]);
        pairsController.pairs.add([
          names[4],
          Urls.femaleUrls[1],
          'female'
        ]);
        pairsController.pairs.add([
          names[5],
          Urls.femaleUrls[2],
          'female'
        ]);
        pairsController.pairs.add([
          names[6],
          Urls.femaleUrls[3],
          'female'
        ]);
        pairsController.pairs.add([
          names[7],
          Urls.maleUrls[3],
          'male'
        ]);
        pairsController.pairs.add([
          names[8],
          Urls.maleUrls[4],
          'male'
        ]);
        pairsController.pairs.add([
          names[9],
          Urls.maleUrls[5],
          'male'
        ]);
        pairsController.pairs.add([
          names[10],
          Urls.maleUrls[6],
          'male'
        ]);
        pairsController.pairs.add([
          names[11],
          Urls.femaleUrls[4],
          'female'
        ]);
        pairsController.pairs.add([
          names[12],
          Urls.maleUrls[7],
          'male'
        ]);
        pairsController.pairs.add([
          names[13],
          Urls.maleUrls[8],
          'male'
        ]);
        pairsController.pairs.add([
          names[14],
          Urls.femaleUrls[5],
          'female'
        ]);
        pairsController.pairs.add([
          names[15],
          Urls.maleUrls[9],
          'male'
        ]);
        pairsController.pairs.add([
          names[16],
          Urls.femaleUrls[6],
          'female'
        ]);
        pairsController.pairs.add([
          names[17],
          Urls.femaleUrls[7],
          'female'
        ]);
        pairsController.pairs.add([
          names[18],
          Urls.maleUrls[10],
          'male'
        ]);
        pairsController.pairs.add([
          names[19],
          Urls.femaleUrls[8],
          'female'
        ]);
        pairsController.pairs.add([
          names[20],
          Urls.maleUrls[11],
          'male'
        ]);
        pairsController.pairs.add([
          names[21],
          Urls.maleUrls[12],
          'male'
        ]);
        pairsController.pairs.add([
          names[22],
          Urls.maleUrls[13],
          'male'
        ]);
        pairsController.pairs.add([
          names[23],
          Urls.maleUrls[14],
          'male'
        ]);
        pairsController.pairs.add([
          names[24],
          Urls.femaleUrls[9],
          'female'
        ]);
        pairsController.pairs.add([
          names[25],
          Urls.femaleUrls[10],
          'female'
        ]);
        pairsController.pairs.add([
          names[26],
          Urls.maleUrls[15],
          'male'
        ]);
        pairsController.pairs.add([
          names[27],
          Urls.femaleUrls[11],
          'female'
        ]);
        pairsController.pairs.add([
          names[28],
          Urls.femaleUrls[12],
          'female'
        ]);
        pairsController.pairs.add([
          names[29],
          Urls.maleUrls[16],
          'male'
        ]);
      } catch(e) {
        print(e.toString());
      }
    }

    for(int i = 0; i < 13; i++) {
      precacheImage(NetworkImage(Urls.maleUrls[i]), context);
    }

    for(int i = 0; i < 17; i++) {
      precacheImage(NetworkImage(Urls.femaleUrls[i]), context);
    }






    final Map<String, List<String>> names = {
      'en': [
        'Hunter',
        'Alexander',
        'Victoria',
        'Blake',
        'Emilia',
        'Sophia',
        'Elizabeth',
        'Xavier',
        'Dylan',
        'Joseph',
        'Matthew',
        'Julia',
        'Michael',
        'Logan',
        'Maya',
        'Gabriel',
        'Vanessa',
        'Zoe',
        'Connor',
        'Molly',
        'Luke',
        'Isaac',
        'Adam',
        'Eric',
        'Katelyn',
        'Lily',
        'Dominic',
        'Mia',
        'Taylor',
        'Patrick',
      ],
      'ru': [
        'Игорь',
        'Александр',
        'Ирина',
        'Антон',
        'Яна',
        'Виктория',
        'Галина',
        'Святослав',
        'Владислав',
        'Владимир',
        'Сергей',
        'Юлия',
        'Артём',
        'Глеб',
        'Ольга',
        'Марк',
        'Надежда',
        'Злата',
        'Никита',
        'Алиса',
        'Павел',
        'Семён',
        'Илья',
        'Лев',
        'Ева',
        'Маргарита',
        'Кирилл',
        'Елизавета',
        'Екатерина',
        'Максим',
      ]
    };

    setPairs(names['data'.tr]!);


    final Map<String, List<String>> descriptionList = {
      'en': [
        'Imagine him in a hunter\'s costume, with a gun, in camouflage',
        'You can take the view of Alexander the Great, that is, take warrior view. with sword, with shield and armor',
        'I encode by sound - victory. Imagine that she raises her hands up with a cup and enjoys the victory, with a medal around her neck',
        'Blade. This is not exactly a characteristic, so just link as many blades as possible to the details of this person. In his hair, in his clothes, etc',
        'If you know an actress who played the mother of dragons, then take her as an view. If you don\'t know - take the emo view',
        'Sofa. Again, this is not a characteristic. On the other hand, you can imagine her taking a sofa pose (something like limbo)',
        'Elizabeth from Pirates of the Caribbean. Other variant - elephant',
        'Caviar. You can imagine how it breaks up into small pieces - caviar. Or just cover it with caviar',
        'Dill. Overgrown with dill',
        'Joker characteristic',
      ],
      'ru': [
        'Кодирую по звучанию - иголка. Я представляю как Игорь скрючился и стал тонким как иголка. Представьте, что его волосы стали дыбом как иголки, и полосы на его джемпере тоже.',
        'Александр - Саша - Саня. Кодирую по звучанию - сантехник. Представили Александра в образе сантехника, в широких синих штанах, в каске, с перчатками белыми.',
        'Ириска. Ирина от поедания ирисок улыбается. И сама она как ириска - в фантике.',
        'Антена. Представьте что сзади антона спутниковая антена.',
        'Роет яму.',
        'Victory - победа. Представьте как руки Виктории тянуться вверх, её рукава опускаются вниз. Она также может держать кубок.',
        'Мигалки. Представьте Галину в костюме копа: в полицейской шляпе, с дубинкой, с жетоном.',
        'Святой. С нимбом, в образе батюшки.',
        'Закодируем по звучанию - властелин колец. Можно взять образ хоббита (маленький, с острыми большими ушами и пончо).',
        'В стиле князя Владимира мономаха, с шапкой.',
      ]
    };


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
        child: Column(
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
                            TextSpan(text: 'practical6_1_1'.tr),
                            TextSpan(text: 'practical6_1_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'practical6_1_3'.tr),
                          ]
                      ),
                    ),
                    sizedBoxLow(),
                    RichText(
                      text: TextSpan(
                          style: Get.textTheme.bodyText1,
                          children:  [
                            TextSpan(text: 'practical6_1_4'.tr),
                            TextSpan(text: 'practical6_1_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'practical6_1_6'.tr),
                          ]
                      ),
                    ),
                    sizedBoxHigh(),
                    Text(
                      'practical6_1_7'.tr,
                      style: Get.textTheme.headline2,
                    ),
                    sizedBoxHigh(),
                    Text(
                      'practical6_1_8'.tr,
                      style: Get.textTheme.bodyText1,
                    ),
                    sizedBoxLow(),
                    Text(
                      'practical6_1_9'.tr,
                      style: Get.textTheme.bodyText1,
                    ),
                    sizedBoxLow(),
                    Text(
                      'practical6_1_10'.tr,
                      style: Get.textTheme.bodyText1,
                    ),
                    sizedBoxLow(),
                    Text(
                      'practical6_1_11'.tr,
                      style: Get.textTheme.bodyText1,
                    ),
                    sizedBoxHigh(),
                    Text(
                      'practical6_1_12'.tr,
                      style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic),
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
        )
      ),
    );
  }

}



