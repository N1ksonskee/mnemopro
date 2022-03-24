import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class PracticalCFOInfo extends StatelessWidget {
  const PracticalCFOInfo({
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
    pairsController.countOfOnePass = 9;
    pairsController.isChainPractical = true;
    pairsController.isSmallPicturePractical = true;
    pairsController.isLieList = true;
    pairsController.isSmallSizePB = true;
    pairsController.maxDescriptionArrayInterval = 2;
    pairsController.enableCorrection = false;
    pairsController.isCustomReferenceList = true;
    pairsController.practicalKey = 'practical3_4';
    pairsController.enableStatistics = false;


    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalChainResult();


    List<String> chain = [
      'Воронежская',
      'Белгородская',
      'Курская',
      'Брянская',
      'Смоленская',
      'Тверская',
      'Ярославская',
      'Костромская',
      'Ивановская',
      'Владимирская',
      'Рязанская',
      'Тамбовская',
      'Липецкая',
      'Орловская',
      'Калужская',
      'Москва',
      'Московская',
      'Тульская',
    ];

    List<String> paths = [
      'assets/cfo/cfo-route1.svg',
      'assets/cfo/cfo-route2.svg',
      'assets/cfo/cfo-route3.svg',
      'assets/cfo/cfo-route4.svg',
      'assets/cfo/cfo-route5.svg',
      'assets/cfo/cfo-route6.svg',
      'assets/cfo/cfo-route7.svg',
      'assets/cfo/cfo-route8.svg',
      'assets/cfo/cfo-route9.svg',
      'assets/cfo/cfo-route10.svg',
      'assets/cfo/cfo-route11.svg',
      'assets/cfo/cfo-route12.svg',
      'assets/cfo/cfo-route13.svg',
      'assets/cfo/cfo-route14.svg',
      'assets/cfo/cfo-route15.svg',
      'assets/cfo/cfo-route16.svg',
      'assets/cfo/cfo-route17.svg',
      'assets/cfo/cfo-route18.svg',
    ];

    List<String> descriptionList = [
      'Похоже на ворону. Представьте огромную ворону на красной площаде.',
      'Похоже на белку. Представьте как ворона кусает белку за голову, поднимая её хвостом вверх.',
      'Похоже на курицу. Представьте, что хвост белки - это куриный хвост.',
      'Похоже на брелок. представьте как кто-то закидывает брелок прям на куриный хвост.',
      'Похоже на смолу. Брелок, закинутый на куриный хвост, начинает соскальзывать, в итоге падает прямо на смолу.',
      'Похоже на дверь. Прямо на краю у этой смолы поставлена открытая дверь. Никто не знает зачем она там, но мы входим в неё.',
      'Похоже на ярмарку. Вошли мы в эту дверь, и там ярмарка, кругом одни палатки.',
      'Похоже на костер - в центре ярмарки горит костер.',
      'Иван-дурак сидит и греется у костра.',
      'Иван-дурак в шапке Владимира Мономаха. Внимание с Ивана перенаправьте на шапку.',
      'Иван-дурак берет толстую резинку, и пытается её растянуть и нацепить на шапку.',
      'Похоже на там-там. После того как у него получилось нацепить резинку на шапку, он кидает шапку вместе с резинкой прям в там-там, отчего он издает звук.',
      'Похоже на липучку. Представьте как с обратной стороны там-тама липкая пожеванная жевачка огромного размера',
      'Похоже на орла. В эту жевачку врезается орёл и прилипает.',
      'Похоже на лужу. Орел пытается вырваться из жевачки, и у него получается. Он падает прямо на лужу, становясь мокрым и грязным.',
      'Ассоциируется с часами на Спасской башне. С лужи мы переводим внимание вверх и видим эту башню.',
      'Похоже на мозг. Представьте как на курантах прилип мозг.',
      'Похоже на тюльпан. Представьте как на поверхности мозга растут тюльпаны, либо положите букет тюльпанов между полушариями мозга.',
    ];

    pairsController.chain.addAll(chain);
    pairsController.lieValues.addAll(chain);
    pairsController.descriptionList.addAll(descriptionList);
    pairsController.paths.addAll(paths);


    pairsController.referencesList.add('Красная площадь');
    pairsController.referencesList.add('Ивановская'); // Ивановская

    pairsController.chains = List.generate(2, (index) => []);

    for(int i = 0, k = 0; i < 2; i++) {
      for(int j = 0; j < pairsController.countOfOnePass; j++) {
        pairsController.chains[i].add(pairsController.chain[k]);
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
                'В этом задании нужно будет запомнить последовательность из 18 субъектов РФ Центрального Федерального Округа (ЦФО) методом Фильма.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'В этом задании вы должны кодировать и представлять также, как написано в подсказках.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'Как будем запоминать',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'Запоминать будем по расположению:',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Center(child: SvgPicture.asset('assets/cfo/cfo-route.svg', height: 400,)),
              sizedBoxLow(),
              Text(
                'Всего субъектов ЦФО - 18, причем все области (кроме Москвы).',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Поскольку 18 это много, то будем запоминать по 9 областей с повторением. Но последовательность фильма как бы одна.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'НАЧАТЬ',
                  color: kblue,
                  handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
              )
            ],
          ),
        )
      ]
  );
}



