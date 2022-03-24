import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class PracticalEnWordsInfo extends StatelessWidget {
  const PracticalEnWordsInfo({
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
    pairsController.isForeignWordsPractical = true;
    pairsController.countOfOnePass = 5;
    pairsController.maxDescriptionArrayInterval = maxArrayInterval - 1;
    pairsController.isRepeatPractical = true;

    pairsController.practicalKey = 'practical6_2';

    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();

    final Map<String, List<List<String>>> pairs = {
      'en': [
        ['yard', 'yad'],
        ['spoon', 'sudgarak'],
        ['elephant', 'cokkiri'],
        ['flour', 'milgaru'],
        ['carpet', 'capet'],
        ['mop', 'girlre'],
        ['basement', 'jiha'],
        ['litter bin', 'cregi bin'],
        ['cock', 'sutalg'],
        ['trap', 'deoch'],
        ['coal', 'seogtan'],
        ['squirrel', 'dalamiwi'],
        ['crocodile', 'ag-eo'],
        ['glasses', 'angyeong'],
        ['berry', 'sagwa'],
      ],
      'ru': [
        ['двор', 'yard'],
        ['ложка', 'spoon'],
        ['щука', 'pike'],
        ['мука', 'flour'],
        ['ковёр', 'carpet'],
        ['швабра', 'mop'],
        ['подвал', 'basement'],
        ['урна', 'litter bin'],
        ['петух', 'cock'],
        ['капкан', 'trap'],
        ['уголь', 'coal'],
        ['белка', 'squirrel'],
        ['дикий', 'wild'],
        ['укроп', 'dill'],
        ['ягода', 'berry'],
      ]
    };

    final Map<String, List<String>> transcriptionsList = {
      'en': [
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
        '',
      ],
      'ru': [
        '[jaːd] (я:д)',
        '[spuːn] (спу:н)',
        '[paik] (пайк)',
        '[ˈflauə] (флауэ)',
        '[mɒp] (моп)',
        '[ˈkaːpit] (ка:пит)',
        '[ˈbeɪsmənt] (бейсмент)',
        '[ˈlitə bin] (лите бин)',
        '[kɒk] (кок)',
        '[træp] (трэп)',
        '[kəul] (коул)',
        '[ˈskwɪrəl] (сквирел)',
        '[waild] (вайлд)',
        '[dil] (дил)',
        '[ˈberɪ] (бери)',
      ]
    };

    final Map<String,List<String>> descriptionList = {
      'en': [
        'Here you can avoid coding',
        'Sugar',
        'Cock + Kirby',
        'Military garage',
        'Here you can avoid coding',
        'Girl',
        'Jin',
        'Crag',
        'Sultan',
        'Deck',
        'Seal',
        'Alarm',
        'Geographic (map)',
        'Angry lion',
        'sugar + wallet',
      ],
      'ru': [
        'Представьте двор. Представьте яд - такая большая зеленая колба прям в центре двора.',
        'Кодирую как спутник. Свяжите спутник с ложкой',
        'Кодирую как пирог. (pie). Свяжите пирог с щукой.',
        'Можно закодировать как фломастер. А можно как цветы, поскольку слово созвучно (flowers).',
        'Что-то капает на ковёр',
        'Мопс со шваброй',
        'Заходим в подвал, а там база, охраняемая ментами.',
        'В урну выкидываем литровую бутылку.',
        'Петух говорит - кОкареку!',
        'Треп-хаус',
        'Кока-кола черная прям как уголь',
        'Белка + Сквидворд из Спанчбоба',
        'Представьте в диких джунглях вайфай-роутер',
        'Диллер продает укроп',
        'Бери ягоду!',
      ]
    };

    for(int i = 0; i < pairs['data'.tr]!.length; i++) {
      pairsController.pairs.add(pairs['data'.tr]![i]);
    }

    for(int i = 0; i < descriptionList['data'.tr]!.length; i++) {
      pairsController.descriptionList.add(descriptionList['data'.tr]![i]);
    }

    for(int i = 0; i < transcriptionsList['data'.tr]!.length; i++) {
      pairsController.transcriptionsList.add(transcriptionsList['data'.tr]![i]);
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
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical6_2_1'.tr),
                      TextSpan(text: 'practical6_2_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical6_2_3'.tr),
                      TextSpan(text: 'practical6_2_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical6_2_6'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical6_2_7'.tr),
                    TextSpan(text: 'practical6_2_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical6_2_9'.tr),
                    TextSpan(text: 'practical6_2_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical6_2_11'.tr)
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical6_2_12'.tr),
                    TextSpan(text: 'practical6_2_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical6_2_14'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_15'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_16'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_17'.tr,
                style: Get.textTheme.bodyText1,
              ),
              SvgPicture.asset('assets/en-ru-repeat.svg'),
              Text(
                'practical6_2_18'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical6_2_19'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_20'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_21'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_22'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical6_2_23'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical6_2_24'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_25'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical6_2_26'.tr,
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



