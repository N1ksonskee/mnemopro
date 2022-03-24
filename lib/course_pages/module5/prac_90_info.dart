import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practic_pages/exercise_codes_list.dart';
import 'package:practical_mnemonic/practical_pages/pracal_locii_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class Practical90Info extends StatelessWidget {
  const Practical90Info({
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
    final Map<String, Map<String, String>> values = {
      'en': {
        'nac': 'NAC',
        'hint': 'Three-digit number...'
      },
      'ru': {
        'nac': 'ЧБК',
        'hint': 'Трехзначное число...'
      },
    };

    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.maxArrayInterval = maxArrayInterval;
    pairsController.isChainPractical = true;
    pairsController.isLociiPractical = true;
    pairsController.isFormCheck = true;
    pairsController.formHintText = values['data'.tr]!['hint']!;
    pairsController.isFormCheckBoxExist = true;
    pairsController.formCheckBoxHint = values['data'.tr]!['nac']!;
    pairsController.textInputType = TextInputType.number;
    pairsController.maskFormatter = MaskTextInputFormatter(mask: '###');
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalLociiResult();
    pairsController.practicalKey = 'practical5_1';


    pairsController.chain.add('418');
    pairsController.chain.add('726');
    pairsController.chain.add('935');
    pairsController.chain.add('013');
    pairsController.chain.add('245');
    pairsController.chain.add('619');
    pairsController.chain.add('807');
    pairsController.chain.add('131');
    pairsController.chain.add('560');
    pairsController.chain.add('341');

    pairsController.chain.add('844');
    pairsController.chain.add('147');
    pairsController.chain.add('157');
    pairsController.chain.add('238');
    pairsController.chain.add('460');
    pairsController.chain.add('000');
    pairsController.chain.add('751');
    pairsController.chain.add('111');
    pairsController.chain.add('314');
    pairsController.chain.add('907');

    pairsController.chain.add('110');
    pairsController.chain.add('806');
    pairsController.chain.add('519');
    pairsController.chain.add('159');
    pairsController.chain.add('844');
    pairsController.chain.add('253');
    pairsController.chain.add('444');
    pairsController.chain.add('009');
    pairsController.chain.add('745');
    pairsController.chain.add('911');

    final Map<String,  List<String>> descriptionList = {
      'en': [
        'Glamorous luggage. I imagine it painted with polka dots, oval shape, with daisies instead of wheels. And instead of a handle, it has a bow',
        'Metal bumper. I imagine it to be golden, with a base like a statuette. And that he\'s nailed up everywhere',
        'A futuristic game. First, I revived my caviar. She has prosthetic legs, weapons and a jetpack that allows her to fly.',
        'A toy lock. I made it look like a plastic gum box for kids.',
        'New Year\'s armor. Hunged with garlands and Christmas toys, stuffed Christmas trees in pockets',
        'The woolly lion. Let\'s imagine that his hair is 1 meter long, when he walks, he stumbles over them. And he also stumbles because of his hairstyle and he can\'t see anything - dreadlocks on his head.',
        'A military dinosaur. With a rifle, in a helmet, in uniform. It is desirable that he has another pose, for example, so that he takes aim',
        'A battered camel. For example, without a head and legs. One body and a hump. It\'s cruel, but it will be memorized better. In your head, you can do whatever you want, forget about the limitations.',
        'An ancient parrot. Not quite correct, but let it be a wooden parrot. You definitely won\'t confuse it. Handmade work.',
        'Nurse doll in a white coat, with a mask, with syringes',
      ],
      'ru': [
        'Представьте гламурную корову. С каблуками, в платье с сумочкой. Первая лоция у меня дверь. Так вот, эта корову всю присасало к двери, из-за того что кто-то с другой стороны держит её за платье.',
        'Металическая лошадь - это памятник лошади, там ещё написано какой.',
        'Топор из будущего. Я его представляю в стиле мечей из звездных войн. Также там есть кнопка по которой он начинает крутиться.',
        'Игрушечный кот. Можно представить кота в стиле подушки, только подушка должна быть не прямоугольной формы. А можно сделать из воздушных шариков слипить круг и ушки.',
        'Новогодний череп. Представьте череп, наденьте не него новогоднюю шапку, либо сделайте рога, прицепите бороду, пусть у него из глаз выскакивает мешура, и обвесте его герляндами.',
        'Шерстяные кеды. Я представляю как вместо шнурков там волосы, внутри все в шерсти, и от подошвы растут как бы длинные волосы.',
        'Военный носок. Можно оживить, добавить каску, и он как бы держит оружие, похож на червяка. А можно представить носок в камуфляжной окраски, или армейские носки такие длинные.',
        'Потрепанный жизнью танк. Это такой танк, без гусениц, весь дымится, с дырками, без башни. Или можно только башню представить с дулом.',
        'Древняя шина. Каменная и не формы идеального круга, а немножко кривая. ',
        'Чайка-доктор. Представьте её в белом докторском халате с шапочкой и в маске, и у неё вместо крыльев шприцы.',
      ]
    };

    pairsController.isLieList = true;
    pairsController.lieValues.addAll(pairsController.chain);

    pairsController.descriptionList.addAll(descriptionList['data'.tr]!);

    pairsController.chains.add(pairsController.chain.getRange(0, 10).toList());
    pairsController.chains.add(pairsController.chain.getRange(10, 20).toList());
    pairsController.chains.add(pairsController.chain.getRange(20, 30).toList());

    pairsController.chainsToFix.add(ChainToFix(chain: pairsController.chain.getRange(0, 10).toList()));
    pairsController.chainsToFix.add(ChainToFix(chain: pairsController.chain.getRange(10, 20).toList()));
    pairsController.chainsToFix.add(ChainToFix(chain: pairsController.chain.getRange(20, 30).toList()));


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
                'practical5_1_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_1_2'.tr,
                style: Get.textTheme.headline2!.copyWith(color: kred),
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical5_1_3'.tr),
                      TextSpan(text: 'practical5_1_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical5_1_5'.tr)
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
                'practical5_1_6'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_1_7'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_1_8'.tr),
                    TextSpan(text: 'practical5_1_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_1_10'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_1_11'.tr),
                    TextSpan(text: 'practical5_1_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_1_13'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_1_14'.tr),
                    TextSpan(text: 'practical5_1_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_1_16'.tr),
                    TextSpan(text: 'practical5_1_17'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_1_18'.tr),
                    TextSpan(text: 'practical5_1_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical5_1_20'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_1_21'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_1_22'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_1_23'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_1_24'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical5_1_25'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_1_26'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_1_27'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical5_1_28'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical5_1_29'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical5_1_30'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical5_1_31'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical5_1_32'.tr),
                      TextSpan(text: 'practical5_1_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical5_1_34'.tr),
                      TextSpan(text: 'practical5_1_35'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical5_1_36'.tr)
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical5_1_37'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'next'.tr,
                  color: kblue,
                  handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
              )
            ],
          ),
        )
      ]
  );
}



