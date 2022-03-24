import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practic_pages/exercise_codes_list.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';


class PracticalDatesInfo extends StatelessWidget {
  const PracticalDatesInfo({
    Key? key,
    required this.title,
    required this.maxSecondsStart,
  }) : super(key: key);

  final String title;
  final int maxSecondsStart;

  @override
  Widget build(BuildContext context) {

    final Map<String, Map<String, String>> values = {
      'en': {
        'hint': 'Date...'
      },
      'ru': {
        'hint': 'Дата...'
      },
    };

    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.maxSecondsCheck = 20;
    pairsController.isFormCheck = true;
    pairsController.isOnlyOneValueInCheck = true;
    pairsController.isSmallTitle = true;
    pairsController.formHintText = values['data'.tr]!['hint']!;
    pairsController.textInputType = TextInputType.number;
    pairsController.maskFormatter = MaskTextInputFormatter(mask: '####-####');
    pairsController.isLastSet = true;
    pairsController.isMiddleSizePB = true;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();
    pairsController.enableStatistics = false;

    pairsController.practicalKey = 'practical5_3';

    final Map<String, List<List<String>>> pairs = {
      'en': [
        ['476', 'Fall of the western Roman Empire'],
        ['1337-1453', 'Hundred Years\' War'],
        ['1776', 'US Declaration of Independence'],
        ['1787', 'Adoption of the US Constitution'],
        ['1949', 'NATO Formation'],
        ['1903', 'Invention of the airplane'],
        ['988', 'Christianity adoption in Russia'],
        ['1910-1917', 'Mexican Revolution'],
        ['1871', 'Formation of the German Empire'],
        ['1938', 'Invention of the computer'],
      ],
      'ru': [
        ['476', 'Падение западной Римской империи'],
        ['1337-1453', 'Столетняя война'],
        ['1776', 'Декларация независимости США'],
        ['1787', 'Принятие конституции США'],
        ['1949', 'Образование НАТО'],
        ['1903', 'Изобретение самолёта'],
        ['988', 'Крещение Руси'],
        ['1910-1917', 'Мексиканская Революция'],
        ['1871', 'Образование Германской империи'],
        ['1938', 'Изобретение компьютера'],
      ]
    };

    final Map<String, List<String>> descriptionList = {
      'en': [
        'I imagine a Roman in a suit, with a cape and an imperial helmet, kneeling, smitten by a glamorous spider (all in diamonds, with heels)',
        'Encode the number 100. Let it be a hand. There are 2 dates here. Therefore, a medical circular saw cuts off the fingers on the left of the hand, and a glamorous fox kisses on the right',
        'I imagine the British coming by ship. Americans come up to them and say "no, no - we are no longer your colonies”" and put up a big US flag. The British are furious and shoot huge iron spiders at the flag from cannons',
        'Not a very imaginative meaning, although for whom as. I will encode the word constitution - king kong. In his hands is the Statue of Liberty, and with this statue he breaks another metal statue of a goose',
        'Nato can be encoded as north atom. And it is possible by value - a fighter. I imagine how this donkey flies on his hooves (which are like a jetpack), pushing a fighter and shooting all enemies with his red cyborg eye.'
      ],
      'ru': [
        'Я представляю как римлянин в костюме, с плащом и имперским шлемом, стоит на коленях, сраженный гламурными сушами, которые не как обычные - завернутые в морскую капусту и с рисом, а все разноцветные и с шоколадной начинкой, или с ночинкой похожей на макароны (печенье). И они прыгают на него, он пытается отбиться, но их слишком много.',
        'Здесь 2 даты. Я представляю войну такой какая она есть. Две стороны и в каждой есть свои монстры. Воины слева - тесто-доктор, похожее на монстра и с ним второстепенные персонажи, справа - гламурный петух(можно представить курицу) и второстепенные персонажи. Курица клюет тесто-монстра, а он колит её шприцами в ответ.',
        'Я представляю, как приплывают Британцы на корабле. Американцы подходят к ним, и говорят “не, не - мы больше не ваши колонии”, и ставят большой флаг США. Британцы в ярости выстреливают во флаг из пушек огромными металическими сушами с гвоздями',
        'Не очень образное значение, хотя для кого как. Закодирую слово конституция - конь. Представлю как этот конь держит зубами Статую Свободы. Заходит на железные весы взвешиваться, ложит её, затем встаёт  весов, забирая статую.',
        'Н - north (северный) атом. Представьте ледяную модель атома, с сосульками. и свяжите её с футуристическим чемоданом, который весь в полосках неоновых. Также можно взять за НАТО - истребитель',
      ]
    };



    for(int i = 0; i < pairs['data'.tr]!.length; i++) {
      pairsController.pairs.add(pairs['data'.tr]![i]);
    }

    for(int i = 0; i < descriptionList['data'.tr]!.length; i++) {
      pairsController.descriptionList.add(descriptionList['data'.tr]![i]);
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
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical5_3_1'.tr),
                      TextSpan(text: 'practical5_3_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
                    ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'practical5_3_3'.tr,
                style: Get.textTheme.headline2!.copyWith(color: kred),
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical5_3_4'.tr),
                      TextSpan(text: 'practical5_3_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical5_3_6'.tr)
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
                'practical5_3_7'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_3_8'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_3_9'.tr),
                    TextSpan(text: 'practical5_3_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_3_11'.tr),
                    TextSpan(text: 'practical5_3_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_3_13'.tr),
                    TextSpan(text: 'practical5_3_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_3_15'.tr)
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical5_3_16'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_3_17'.tr),
                    TextSpan(text: 'practical5_3_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_3_19'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_3_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_3_21'.tr)
                  ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'practical5_3_22'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_3_23'.tr,
                style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
              ),
              sizedBoxLow(),
              Text(
                'practical5_3_24'.tr,
                style: Get.textTheme.bodyText1,
              ),
              Center(child: SvgPicture.asset('practical5_3_svg1'.tr, height: 250,)),
              sizedBoxHigh(),
              Text(
                'practical5_3_25'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxLow(),
              Text(
                'practical5_3_26'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical5_3_27'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                children: [
                  Text(
                    'practical5_3_28'.tr,
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
                      TextSpan(text: 'practical5_3_29'.tr),
                      TextSpan(text: 'practical5_3_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical5_3_31'.tr),
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
            ],
          ),
        )
      ]
  );
}



