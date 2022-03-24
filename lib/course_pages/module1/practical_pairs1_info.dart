import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/words.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'lec1_10.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class PracticalPairs1Info extends StatelessWidget {
  const PracticalPairs1Info({
    Key? key,
    required this.title,
    required this.maxSecondsStart,
    this.isLieList = true,
  }) : super(key: key);

  final String title;
  final int maxSecondsStart;
  final bool isLieList;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.isLastSet = true;
    pairsController.isLieList = true;
    pairsController.lieValues = Words.words['data'.tr];
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = Lec1_10(title: Headers.theoryHeaders['data'.tr]![0][9], isFromPractical: true,);
    pairsController.practicalKey = 'practical1_1';

    final Map<String, List<List<String>>> pairsMap = {
      'en': [
        ['stump', 'saw'],
        ['bus', 'fang'],
        ['snake', 'drum'],
        ['space', 'seal'],
        ['salt', 'picture'],
        ['branch', 'hat'],
        ['cock', 'automobile'],
        ['braid', 'beard'],
        ['turkey', 'basin'],
        ['scorpion', 'whistle'],
        ['stove', 'ice floe'],
        ['stone', 'duck'],
        ['sink', 'horse'],
        ['hippopotamus', 'apple'],
        ['lift', 'tank'],
      ],
      'ru': [
        ['пень', 'пила'],
        ['автобус', 'клык'],
        ['змея', 'барабан'],
        ['космос', 'тюлень'],
        ['соль', 'картина'],
        ['ветка', 'шляпа'],
        ['петух', 'автомобиль'],
        ['коса', 'борода'],
        ['индюк', 'таз'],
        ['скорпион', 'свисток'],
        ['плита', 'льдина'],
        ['камень', 'утка'],
        ['раковина', 'лошадь'],
        ['бегемот', 'яблоко'],
        ['лифт', 'танк'],
      ],
    };

    final Map<String, List<String>> descriptionMap = {
      'en' : [
        'We can\'t imagine how a tree is being cut, because we have a stump. Therefore, imagine how the stump is sawn (we need it to be even shorter)',
        'Since memorization is 1:1, you can make a fusion of views (as an option) - imagine a bus-fang  (bus with huge fangs in front, on the roof and on the sides)',
        'You can imagine someone playing a snake on a drum. Do not forget that the images should be approximately the same size',
        'I imagine a seal floating in the orbit of the solar system touching the planets. The cosmos is an unlimited view, but since memorization is 1:1, we can take the cosmos as an environment. Or you can come up with an association to the cosmos, for example, a model of the solar system',
        'Imagine how someone is salting a picture, straight pouring out huge slides. The main thing is not to confuse it with flour and sugar.'
      ],
      'ru' : [
        'Представить как пилят дерево мы не можем, поскольку у нас пень. Поэтому представьте как пень пилят пилой, вот нужно, чтоб он был ещё короче',
        'Поскольку запоминание 1:1, можно сделать слияние образов (как вариант) - представьте автобусоклык - автобус с огромными клыками спереди, на крыше и по бокам',
        'Можно представить как кто-то играет змеёй на барабане. Не забывайте что образы должны быть примерно одинакового размера',
        'Я представляю как по орбите солнечной системы плывет тюлень задевая планеты. Космос образ неограниченный, но поскольку запоминание 1:1, мы можем взять космос за среду. Либо вы можете придумать ассоциацию к космосу, например, модель солнечной системы',
        'Представьте как кто-то солит картину, прям высыпая огромными горками. Главное не перепутать с мукой и сахаром.'
      ],
    };

    List<List<String>> pairsList = pairsMap['data'.tr]!.toList();
    List<String> descriptionList = descriptionMap['data'.tr]!.toList();


    for(int i = 0; i < pairsList.length; i++) {
      pairsController.pairs.add(pairsList[i]);
    }

    for(int i = 0; i < descriptionList.length; i++) {
      pairsController.descriptionList.add(descriptionList[i]);
    }

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
      Text(
        'practical1_1_1'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      Text(
        'practical1_1_2'.tr,
        style: Get.textTheme.headline2,
      ),
      sizedBoxHigh(),
      Text(
        'practical1_1_3'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'practical1_1_4'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxLow(),
      Text(
        'practical1_1_5'.tr,
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
            TextSpan(text: 'practical1_1_6'.tr),
            TextSpan(text: 'practical1_1_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'practical1_1_8'.tr),
            TextSpan(text: 'next'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
          ]
        ),
      ),
      sizedBoxLow(),
      Row(
        children: [
          Expanded(child: SvgPicture.asset('assets/purpose.svg'), flex: 2,),
          Expanded(
            flex: 3,
            child: RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'practical1_1_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical1_1_10'.tr),
                  ]
              ),
            ),
          )
        ],
      ),
      sizedBoxHigh(),
      CustomButton(
          title: 'next'.tr,
          color: kblue,
          handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
      ),
    ]
  );
}