import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
import 'practical_association_info.dart';

class Lec3_1 extends StatelessWidget {
  const Lec3_1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kredBG,
      appBar: AppBar(

        backgroundColor: kred,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2),
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
          'lec3_1_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec3_1_2'.tr),
              TextSpan(text: 'lec3_1_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ':'),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_5'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec3_1_6'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec3_1_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_8'.tr),
              TextSpan(text: 'lec3_1_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_10'.tr),
              TextSpan(text: 'lec3_1_11'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_12'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec3_1_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec3_1_14'.tr),
                TextSpan(text: 'lec3_1_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec3_1_16'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec3_1_17'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_19'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_20'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_21'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_22'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_23'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_24'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_25'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('assets/signs.svg', height: 300,)),
        sizedBoxHigh(),
        Text('lec3_1_26'.tr, style: Get.textTheme.headline2,),
        sizedBoxHigh(),
        Text(
          'lec3_1_27'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: RichText(
                  text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: [
                      TextSpan(text: 'lec3_1_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'lec3_1_29'.tr)
                    ]
                  ),
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
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: RichText(
                  text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children: [
                        TextSpan(text: 'lec3_1_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'lec3_1_31'.tr)
                      ]
                  ),
                )
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: RichText(
                  text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children:  [
                        TextSpan(text: 'lec3_1_32'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'lec3_1_33'.tr)
                      ]
                  ),
                )
            )
          ],
        ),
        sizedBoxHigh(),
        Text(
          'lec3_1_34'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec3_1_35'.tr,
          style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'lec3_1_36'.tr),
              TextSpan(text: 'lec3_1_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_38'.tr),
              TextSpan(text: 'lec3_1_39'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),

            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_40'.tr,
          style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec3_1_41'.tr),
                TextSpan(text: 'lec3_1_42'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec3_1_43'.tr),
                TextSpan(text: 'lec3_1_44'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec3_1_45'.tr),
                TextSpan(text: 'lec3_1_46'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_47'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec3_1_48'.tr),
                TextSpan(text: 'lec3_1_49'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec3_1_50'.tr),
                TextSpan(text: 'lec3_1_51'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec3_1_52'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_53'.tr,
          style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec3_1_54'.tr),
                TextSpan(text: 'lec3_1_55'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec3_1_56'.tr),
                TextSpan(text: 'lec3_1_57'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec3_1_58'.tr),
                TextSpan(text: 'lec3_1_59'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
              ]
          ),
        ),
        sizedBoxHigh(),
        Center(child: SvgPicture.asset('lec_3_1_svg1'.tr, height: 250,)),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec3_1_60'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_61'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec3_1_62'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec3_1_63'.tr),
              TextSpan(text: 'lec3_1_64'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_65'.tr),
              TextSpan(text: 'lec3_1_66'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_67'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_68'.tr,
          style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec3_1_69'.tr),
              TextSpan(text: 'lec3_1_70'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_71'.tr),
              TextSpan(text: 'lec3_1_72'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_73'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_74'.tr,
          style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec3_1_75'.tr),
                TextSpan(text: 'lec3_1_76'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec3_1_77'.tr),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_78'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec3_1_79'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec3_1_80'.tr),
              TextSpan(text: 'lec3_1_81'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec3_1_82'.tr),
                TextSpan(text: 'lec3_1_83'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '0',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
                child: Text(
                  'lec3_1_84'.tr,
                  style: Get.textTheme.bodyText1,
                )
            )
          ],
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec3_1_85'.tr),
              TextSpan(text: 'lec3_1_86'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec3_1_87'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
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
                    children:  [
                      TextSpan(text: 'lec3_1_88'.tr),
                      TextSpan(text: 'lec3_1_89'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'lec3_1_90'.tr),
                    ]
                  ),
                )
            )
          ],
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_91'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            Text(
              'lec3_1_92'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec3_1_93'.tr,
              style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
            ),
            sizedBoxLow(),
            Text(
              'lec3_1_94'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec3_1_95'.tr,
              style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
            ),
            sizedBoxLow(),
            Text(
              'lec3_1_96'.tr,
              style: Get.textTheme.bodyText1,
            ),
          ],
          title: 'lec3_1_97'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
          subtitleColor: kblueDark
        ),
        sizedBoxLow(),
        Text(
          'lec3_1_98'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kblue),
            ),
            const SizedBox(width: 16,),
            Expanded(
              child: Text(
                'lec3_1_99'.tr,
                style: Get.textTheme.bodyText1,
              )
            )
          ],
        ),
        sizedBoxLow(),
        'data'.tr == 'ru' ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'вашингто - вашингт - вашинг',
            style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
          ),
          sizedBoxLow(),
          Text(
            'Ничего не напоминает.',
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'вашин',
            style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: const [
                  TextSpan(text: 'Можно разделить слово на '),
                  TextSpan(text: 'ва', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' и '),
                  TextSpan(text: 'шин', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' и представить '),
                  TextSpan(text: 'ва'),
                  TextSpan(text: 'зу', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' с '),
                  TextSpan(text: 'шин', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'ой как один образ. (Порой это даже эффективнее, потому что больше нейронов задействуется на создание образа).'),
                ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'Если вам не нравится представлять 2 образа как 1, то можно пойти ещё дальше.',
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'ваши',
            style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: const [
                  TextSpan(text: 'Если запоминание рефлекторное, то можно представить ситуацию как водитель одного миллионера выходит из красивой машины, подходит к владельцу и говорит: “'),
                  TextSpan(text: 'Ваши', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' ключи, сэр"'),
                ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'ваш',
            style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: const [
                  TextSpan(text: 'Можно взять английское слово '),
                  TextSpan(text: 'wash', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: '  и представить как кто-то что-то моет или объект, ассоциирующийся с этим глаголом, например, губка. Хотя звучит оно не так как пишется, но наш мозг умный - поймет.'),
                ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'ва',
            style: Get.textTheme.headline2!.copyWith(fontSize: 20, color: kblue),
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
                style: Get.textTheme.bodyText1,
                children: const [
                  TextSpan(text: 'Это последний рубеж. На 2 буквы можно найти любое слово: '),
                  TextSpan(text: 'ва', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'за, '),
                  TextSpan(text: 'ва', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'ленок, '),
                  TextSpan(text: 'ва', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'реник.'),
                ]
            ),
          ),
        ],) : Column(
          children: [
            Text(
              'washingto - washingt - washing',
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'Alright, you see the word washing, and you can take washing machine as a view',
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'Let\'s take another example. State Michigan. The name itself already reminds me of the word minigun.',
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'California. For this you can just take a calendar as a view. But optionally you can encode one word into several. In this example you can encode California into car and fork, and do a merge of the calendar and fork. And sometimes it\'s even better, because by merging views, you use more brain resources, and therefore the connection is stronger.',
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'You can encode words until there are 2 sounds left. There are a lot of words for 2 sounds.',
              style: Get.textTheme.bodyText1,
            )
          ],
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
            widgets: [
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'lec3_1_100'.tr),
                    TextSpan(text: 'lec3_1_101'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'lec3_1_102'.tr,
                textAlign: TextAlign.center,
                style: Get.textTheme.headline2!.copyWith(color: kred, fontSize: 20),
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'lec3_1_103'.tr),
                      TextSpan(text: 'lec3_1_104'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
            ],
            title: 'lec3_1_105'.tr,
            subtitle: 'important'.tr,
            color: kred,
            subtitleColor: kredDark
        ),
        sizedBoxHigh(),
        'data'.tr == 'ru' ? CustomExpansionTileLec(
            widgets: [
              Text(
                'Например для слова Вашингтон, можно ли откинуть первые 2 буквы и представить только шину?',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: const [
                    TextSpan(text: 'На самом деле, да. Вы можете убирать буквы с начала слова, если '),
                    TextSpan(text: 'концы более-менее совпадают.', style: TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: const [
                    TextSpan(text: 'Например, мы запоминаем иностранные слова. Хотим выучить '),
                    TextSpan(text: 'спаржа - asparagus', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: '. В данном случае вообще можно не использовать мнемотехнику, потому что если откинуть первую букву, слово будет похоже на русское и без кодирования.'),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: const [
                      TextSpan(text: 'Или хотим выучить '),
                      TextSpan(text: 'баранина - mutton', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '. Заменив первую букву на b, мы получим '),
                      TextSpan(text: 'батон', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '. В данном случае окончания совпадают.'),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: const [
                      TextSpan(text: 'В других случаях они могут не совпадать, поэтому вместо '),
                      TextSpan(text: 'батона', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' следует взять '),
                      TextSpan(text: 'матрас', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ', поскольку наш мозг научен распознавать именно по началу, а не по концу слова.'),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: const [
                      TextSpan(text: 'Если я вам скажу '),
                      TextSpan(text: 'есница'),
                      TextSpan(text: ', какой объект вы распознаете?'),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: const [
                      TextSpan(text: 'Лестница или ресница? Несмотря на то, что в слове '),
                      TextSpan(text: 'лестница', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' пропущена одна буква, многие из вас могли распознать это слово первым.'),
                    ]
                ),
              ),
            ],
            title: 'lec3_1_106'.tr,
            subtitle: 'additional'.tr,
            color: kblue,
            subtitleColor: kblueDark
        ) :  CustomExpansionTileLec(
            widgets: [
              Text(
                'For example, coding the state of Ohio, can we drop the first letter and encode hio as eye?',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: const [
                      TextSpan(text: 'Actually, yes. You can remove letters from words first '),
                      TextSpan(text: 'if the ends more or less match as in the example above.', style: TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
            sizedBoxLow(),
              Text(
                'In other cases, the endings may not match, so it is better not to abuse the encoding of the last letters. I\'ll explain why. Our brain is trained to recognize exactly the beginning of the word',
                style: Get.textTheme.bodyText1,
              ),
            ],
            title: 'lec3_1_106'.tr,
            subtitle: 'additional'.tr,
            color: kblue,
            subtitleColor: kblueDark
        ),
       'data'.tr == 'ru' ? Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           sizedBoxHigh(),
           Text(
             'Важное замечание',
             style: Get.textTheme.headline2,
           ),
           sizedBoxHigh(),
           Text(
             'Важно кодировать слова именно по звучанию, а не по тому как они пишутся. Потому что пишутся слова не всегда так, как произносятся. Только в Русском слово звучит также как и пишется.',
             style: Get.textTheme.bodyText1,
           ),
         ],
       ) : Container(),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () {
              AuthService().upgradeData('practical3_1');
              Get.off(PracticalAssociationInfo(title: Headers.practicalHeaders['data'.tr]![2][0], chainCount: 30, maxSecondsStart: 30), transition: Transition.rightToLeft);
            }
        )
      ]
  );
}