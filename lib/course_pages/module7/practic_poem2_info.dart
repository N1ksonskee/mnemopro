import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/practical_pages/practical_no_timer_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';



class PracticalPoem2Info extends StatelessWidget {
  const PracticalPoem2Info({Key? key, required this.title}) : super(key: key);
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
    final Map<String, List<Widget>> poem = {
      'en': [
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
                children: const [
                  TextSpan(text: 'The garden wasn\'t a garden,\n'),
                  TextSpan(text: 'It was a  '),
                  TextSpan(text: 'castle', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' tall,\n'),
                  TextSpan(text: 'The '),
                  TextSpan(text: 'trees', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' were mighty turrets,\n'),
                  TextSpan(text: 'Ramparts, the garden wall.', style: TextStyle(fontWeight: FontWeight.bold))
                ]
          )),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
                children: const [
                  TextSpan(text: 'The breeze was the lone '),
                  TextSpan(text: 'piper\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Playing', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' a wild song,\n'),
                  TextSpan(text: 'And Freddie was the Black Knight\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'The afternoon long.'),
                ]
            )),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
                children: const [
                  TextSpan(text: 'Then dark came to the castle\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Around the '),
                  TextSpan(text: 'piper\'s head,\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'And Mother carried the Black Knight,\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'And put him safe to bed.\n', style: TextStyle(fontWeight: FontWeight.bold)),
                ]
            )),
      ],
      'ru': [
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
                children: const [
                  TextSpan(text: 'Белая береза\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Под моим '),
                  TextSpan(text: 'окном\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Принакрылась снегом,\n'),
                  TextSpan(text: 'Точно серебром.')
                ]
            )),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
                children: const [
                  TextSpan(text: 'На пушистых '),
                  TextSpan(text: 'ветках\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Снежною каймой\n'),
                  TextSpan(text: 'Распустились '),
                  TextSpan(text: 'кисти\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Белой бахромой.')
                ]
            )),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
                children: const [
                  TextSpan(text: 'И '),
                  TextSpan(text: 'стоит берёза\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'В сонной тишине,\n'),
                  TextSpan(text: 'И '),
                  TextSpan(text: 'горят снежинки\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'В золотом огне.')
                ]
            )),
        RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
                children: const [
                  TextSpan(text: 'А '),
                  TextSpan(text: 'заря', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ', лениво\n'),
                  TextSpan(text: 'Обходя кругом\n'),
                  TextSpan(text: 'Обсыпает ветки\n', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'Новым серебром.')
                ]
            )),
      ]
    };

    Map<String, List<String>> poemDescription = {
      'en': [
        'Imagine the garden inside the castle, then the tall castle itself. then trees, ramparts, the garden wall. You can memorize it with a chain, or just walk around the castle with your eyes',
        'Imagine a piper playing a pipe. Then Freddy Krueger comes up to him, dressed in a dark knight costume and kills piper',
        'After the murder of the piper, darkness descended. Then direct your gaze at his head. Then mom comes, takes the black knight and puts him to bed'
      ],
      'ru': [
        'По сути, здесь один факт - береза стоит в снегу под вашим окном. Представьте эту картину, затем воспроизведите в рифму.',
        'Здесь используются слова декорации: кайма, кисть, бахрома. Если вы их знаете, можете использовать. Если не знаете, их можно кодировать, например, представить как на пушистых ветках распутились  человеческие кисти, а затем её накрыли бархатной тканью. Конечно, лучше разобраться в значениях слов, прежде чем что-то учить. Я же показываю чистую мнемотехнику.',
        'Можно представить как береза встает на ноги, а затем обжигается солнечными лучами, из-за чего начинает гореть.',
        'Как только солнце соприкасается с горизонтом, оно встает на ноги, подходит в березе и обсыпает её серебром.',
      ]
    };


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'practical7_2_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'practical7_2_2'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'practical7_2_3'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical7_2_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical7_2_5'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical7_2_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
            'practical7_2_7'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'practical7_2_8'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'practical7_2_9'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'practical7_2_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
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
                  'practical7_2_11'.tr,
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
                  'practical7_2_12'.tr,
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
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'practical7_2_13'.tr,
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
              '4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'practical7_2_14'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
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
          'practical7_2_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical7_2_16'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'practical7_2_17'.tr),
                const TextSpan(text: '>', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kred)),
                TextSpan(text: 'practical7_2_18'.tr)
              ]
          ),
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () => Get.off(PracticalNoTimerStart(title: title, poems: poem['data'.tr]!, poemsDescriptionStringList: poemDescription['data'.tr]!, practicalKey: 'practical7_2',), transition: Transition.rightToLeft)
        )
      ]
  );
  }
}