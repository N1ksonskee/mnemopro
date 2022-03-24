import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/practical_pages/practical_no_timer_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';


class PracticalPoemInfo extends StatelessWidget {
  const PracticalPoemInfo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Container(
          margin: const EdgeInsets.all(8),
          child: Text(title, style: Get.textTheme.headline1, maxLines: 2),
        ),
        leading: const CloseIconButton(isLec: true,),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    final Map<String, List<Widget>> poems = {
      'en': [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              children: const [
                TextSpan(text: 'My '),
                TextSpan(text: 'bed', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' is like a '),
                TextSpan(text: 'little boat;\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' Nurse helps me in when I embark;\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'She girds me in my sailor\'s coat\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'And'),
                TextSpan(text: ' starts me in the dark', style: TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              children: const [
                TextSpan(text: 'At night I go on board and say\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Good-night'),
                TextSpan(text: ' to all my friends on shore\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'I shut my eyes and sail away \n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '  And see and hear no more.'),
              ]
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              children: const [
                TextSpan(text: 'And sometimes '),
                TextSpan(text: 'things to bed I take,\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'As prudent sailors have to do;\n'),
                TextSpan(text: 'Perhaps '),
                TextSpan(text: 'a slice of wedding-cake,\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Perhaps '),
                TextSpan(text: 'a toy or two.', style: TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              children: const [
                TextSpan(text: 'All night across the dark we steer;\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' But when the '),
                TextSpan(text: 'day returns', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' at last, \n'),
                TextSpan(text: 'Safe in my room beside the pier,\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'I find my vessel fast.', style: TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
      ],
      'ru': [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              children: const [
                TextSpan(text: 'Белеет '),
                TextSpan(text: 'парус', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' одинокой\n'),
                TextSpan(text: 'В '),
                TextSpan(text: 'тумане', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' моря голубом!..\n'),
                TextSpan(text: 'Что '),
                TextSpan(text: 'ищет', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' он в стране далекой?\n'),
                TextSpan(text: 'Что '),
                TextSpan(text: 'кинул', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' он в краю родном?\n'),
              ]
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              children: const [
                TextSpan(text: 'Играют волны — ветер свищет,\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'И мачта гнется и скрыпит\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Увы! он '),
                TextSpan(text: 'счастия не ищет\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'И '),
                TextSpan(text: 'не от счастия бежит!', style: TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              children: const [
                TextSpan(text: 'Под ним '),
                TextSpan(text: 'струя', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' светлей лазури,\n'),
                TextSpan(text: 'Над ним '),
                TextSpan(text: 'луч солнца', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' золотой...\n'),
                TextSpan(text: 'А он, мятежный, '),
                TextSpan(text: 'просит бури,\n', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'Как будто в бурях есть покой!'),
              ]
          ),
        ),
      ]
    };

    Map<String, List<Widget>> poemsDescription = {
      'ru': [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: const [
                TextSpan(text: 'Представьте как '),
                TextSpan(text: 'парус', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' один плывет по морю '),
                TextSpan(text: 'в тумане', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ', от чего он и белеет. '),
                TextSpan(text: 'Затем представьте как пассажир на парусе смотрит в бинокль, '),
                TextSpan(text: 'ищет путь.'),
                TextSpan(text: ' А затем он '),
                TextSpan(text: 'кидает', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' этот бинокль в море.'),
              ]
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: const [
                TextSpan(text: 'Когда пассажир выкинул бинокль, море разозлилось:  '),
                TextSpan(text: 'волны заиграли, ветер поднялся.', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' Ветер проходя через мачту '),
                TextSpan(text: 'свищет', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ', от чего мачта '),
                TextSpan(text: 'гнется и скрепит.', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' Пассажир в панике начинает выкидывать мешки с деньгами '),
                TextSpan(text: '(счастия не ищет).', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' И тут пояляется Посейдон с трезубцем, который прям не доволен, что тот намусорел в море. Ну а парус не дурак, '),
                TextSpan(text: 'убегает', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' от него'),

              ]
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: const [
                TextSpan(text: 'В итоге парус “убегает” от Пасейдона, и наконец выходит из тумана и бури на солнце. '),
                TextSpan(text: 'Под парусом становится видна берюзовая '),
                TextSpan(text: 'струя', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ', которая светлей лазури. Над парусом светит '),
                TextSpan(text: 'солнце.', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' Наш персонаж морщится прям, ему это все не нравится, он мятежно встает на колени, молится и '),
                TextSpan(text: 'просит бури.'),
              ]
          ),
        ),
      ],
      'en': [
        Text(
          'Everything is very imaginable here. Imagine a boat bed, as a nurse helps him climb on it, then puts a sailor\'s coat on him, and then pushes his boat.',
          textAlign: TextAlign.center,
          style: Get.textTheme.bodyText1,
        ),
        Text(
          'Imagine how he getting on the boat again and shouts to his friends on shore, then closes his eyes and sails away again.',
          textAlign: TextAlign.center,
          style: Get.textTheme.bodyText1,
        ),
        Text(
          'Imagine how he puts a box with some things on the bed first, then a slice of cake, and finally 2 more toys on top',
          textAlign: TextAlign.center,
          style: Get.textTheme.bodyText1,
        ),
        Text(
          'Okay, imagine how he floats all night and the moon is replaced by sunrise. He swims up to the pier, enters the room, and then confidently leaves it at night, and immediately (safe) finds his boat without looking round.',
          textAlign: TextAlign.center,
          style: Get.textTheme.bodyText1,
        ),
      ]
    };



    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'practical3_5_1'.tr),
                TextSpan(text: 'practical3_5_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'practical3_5_3'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'practical3_5_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'practical3_5_5'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'practical3_5_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'practical3_5_7'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'practical3_5_8'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kgrey),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'practical3_5_9'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'practical3_5_10'.tr,
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
        Text(
          'practical3_5_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical3_5_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'practical3_5_13'.tr),
              const TextSpan(text: '>', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kred)),
              TextSpan(text: 'practical3_5_14'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
        CustomButton(
          title: 'next'.tr,
          color: kblue,
          handler: () => Get.off(PracticalNoTimerStart(title:  Headers.practicalHeaders['data'.tr]![2][4], poems: poems['data'.tr]!, practicalKey: 'practical3_5',poemsDescriptionWidgetList: poemsDescription['data'.tr]!,), transition: Transition.rightToLeft)
        )
      ]
  );
  }
}