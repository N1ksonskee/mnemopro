import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/states.dart';
import 'package:practical_mnemonic/controllers/practical_codes_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_codes_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';


class PracticalStatesCodeInfo extends StatelessWidget {
  const PracticalStatesCodeInfo({Key? key, required this.title,}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final PracticalCodesController controller = Get.put(PracticalCodesController(), permanent: true);
    controller.clear();
    controller.title = title;
    controller.practicalKey = 'practical3_3';

    final Map<String, List<List<String>>> codesList = {
      'en': [
        [
          'Origami Figure',
          'Oreo cookies',
          'Orange fruit',
        ],
        [
          'IQOS',
          'Dahon bike',
        ],
        [
          'Wifi-router',
          'Wild',
        ],
        [
          'Duck sunbathing on a sunbed',
        ],
        [
          'Nebula from the Avengers',
          'Neb + rascal',
        ],
        [
          'Iphone (on the IOS platform)',
          'Apple (as an ios vendor)',
        ],
        [
          'Linoleum',
          'Ill (in a wheelchair)',
        ],
        [
          'Indiana Jones',
          'Elephant (from India)',
        ],
        [
          'Eye',
          'Coyote',
        ],
        [
          'Pencil',
        ],
        [
          'Calendar',
          'Calypso from Pirates of the Caribbean',
        ],
        [
          'Casino roulette (Las Vegas is located in the state)',
        ],
        [
          'Yurt',
          'Yula',
          'YouTube button',
          'Yogurt',
        ],
        [
          'Palette (color)',
          'Colorado beetle',
        ],
        [
          'Canvas',
          'Cancer'
        ],
        [
          'Mizuna',
          'An envelope with a message',
        ],
        [
          'TUC crackers',
          'Kangaroo',
        ],
        [
          'A girl in a cowboy suit with a hat and a pestlet',
        ],
        [
          'Usual girl',
          'Virus (like a dummy)',
        ],
        [
          'Ara parrot',
          'Mermaid Ariel',
          'Aryan with a swastika',
        ],
        [
          'Mexican hat wrapped in film (new)',
          'Nachos',
        ],
        [
          'Taxi',
          'Tuxedo',
        ],
        [
          'Oculus VR + Home',
        ],
        [
          'Arch + canvas',
          'Arkana (car)'
        ],
        [
          'Tennis rocket',
          'Tennis ball',
        ],
        [
          'Crown in the snow, icy, like the King of the Night in the Game of Thrones',
          'car + airliner in the snow',
        ],
        [
          'Lowrider car',
        ],
        [
          'Mrs hippie',
        ],
        [
          'Obama (with background, in a suit, with a microphone)',
          'Muslim (Allah)',
          'Aladdin',
        ],
        [
          'Joker',
          'Joggers',
        ],
        [
          'Crown crown of fruit',
          'car + airliner from fruits',
        ],
        [
          'Flowers',
          'Flour'
        ],
        [
          'Alarm',
        ],
        [
          'Hawk',
          'Palm',
        ],
        [
          'Worm',
          'Vermicelli'
        ],
        [
          'Jam in a package (new)',
          'Jumper',
          'Gamora from Guardians of the Galaxy'
        ],
        [
          'Superman',
          'SpiderMan',
          'Sliderman',
          'Enderman',
        ],
        [
          'Massager',
        ],
        [
          'Router',
          'Island'
        ],
        [
          'Power cable (connect)',
        ],
        [
          'Mouse Jerry',
          'Jerry from Rick and Morty',
          'Jack Sparrow',
        ],
        [
          'Delivery (like a box)',
        ],
        [
          'Bloody Mary',
          'Bloody Mary Cocktail',
        ]
      ],
      'ru': [
        [
          'Фигурка оригами',
          'Орех',
          'Орел',
          'Орегано'
        ],
        [
          'Айкос',
          'Айболит',
          'Ай да хорошо',
        ],
        [
          'Wifi-роутер',
          'Дикий (wild)',
          'Мина',
        ],
        [
          'Два кота загорают на лежаках',
          'утка загорает',
          'Дональд Дак загорает',
        ],
        [
          'Пловец, плывущий кролем (не брасом)',
          'Закрытое баскетбольное кольцо',
        ],
        [
          'Айфон (на патформе IOS)',
          'Айкос',
          'Яблоко (производитель IOS - apple)',
        ],
        [
          'Самолет Ил, весь в иле, с человеческим носом',
        ],
        [
          'Индиана Джонс',
          'Индейка',
          'Индеец',
        ],
        [
          'Огонь',
          'Гаишник',
          'Молящийся гаишник (О, гайо)',
        ],
        [
          'Карандаш (pencil)',
          'Пенсионер',
        ],
        [
          'Калина',
          'Кал',
          'Роллы',
        ],
        [
          'Рулетка казино (в штате расположен Лас-Вегас)',
          'Неваляшка',
          'Кока-кола (не вода)',
        ],
        [
          'Юрта',
          'Юла',
          'Кнопка YouTube',
        ],
        [
          'Палитра (color - цвет)',
          'Колорадский жук',
        ],
        [
          'Канат',
          'канарейка'
        ],
        [
          'Сурикат',
        ],
        [
          'Кентавр + tuc (печенье)',
          'Кенгуру',
        ],
        [
          'Девушка в ковбойском костюме со шляпой и пестолетом',
        ],
        [
          'Обычная девушка',
          'Верблюд + джин',
        ],
        [
          'Ара (попугай) в клетке',
          'Сердце (Аритмия)',
          'Ариец со свастикой',
          'Ариэль (русалка)',
        ],
        [
          'Мексиканская шляпа, упакованная в плёнке (new)',
          'Начос',
        ],
        [
          'Телефон',
          'Такси',
          'Техник',
        ],
        [
          'Оклад на иконе',
          'Окно + хомяк',
        ],
        [
          'Арка + канат',
          'Аркана (машина)'
        ],
        [
          'Теннисная ракетка',
          'Теннисный мячик',
        ],
        [
          'Корона в снегу, ледяная, как у Короля Ночи в Игре Престолов',
          'Король ночи',
          'Замерзший кролик'
        ],
        [
          'Бильярдный стол (с лузами)',
        ],
        [
          'Миссис хиппи',
          'Персонаж Мисс Марпл',
        ],
        [
          'Обама (с бэкграундом, в костюме, с микрофоном)',
          'Мусульманин (Аллах)',
          'Алладин с бананом',
        ],
        [
          'Джокер',
          'Джоггеры',
        ],
        [
          'Корона из фруктов',
          'Кролик загорает',
          'Король Лемур из Мадагаскара'
        ],
        [
          'Цветы (флора, flowers)',
          'Фломастер',
          'Мука (Flour)'
        ],
        [
          'Каляска',
        ],
        [
          'Собака гавкает',
          'Пальма',
        ],
        [
          'Вермешель',
          'Верблюд + мамонт'
        ],
        [
          'Джем в упаковке (new)',
          'Джемпер',
          'Гамора из Стражей Галактики'
        ],
        [
          'Супермэн',
          'Спайдэрмэн',
          'Слайдэрмэн',
          'Эндермэн',
          'Мент'
        ],
        [
          'Массажер',
          'Мануальщик, делающий массаж чупа-чупсу'
        ],
        [
          'Рот',
          'Айсберг'
        ],
        [
          'Кабель питания (connect)',
          'Конь'
        ],
        [
          'мышонок Джерри',
          'Джерри из "Рика и Морти"',
          'Джек Воробей',
        ],
        [
          'Старые папки с листами (дела)',
          'Дельфин + вертолёт',
        ],
        [
          'Мэр с шапкой-цилиндром',
          'Кровавая Мэри',
          'Коктэйль Кровавая Мэри',
        ]
      ]
    };

    for(int i = 1; i < States.statesList['data'.tr]!.length; i++) {
      controller.chain.addAll(States.statesList['data'.tr]![i]);
    }

    for(int i = 0; i < codesList['data'.tr]!.length; i++) {
      controller.codes.add(codesList['data'.tr]![i]);
    }

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

  Widget _buildBody() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'practical3_3_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_2'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'practical3_3_3'.tr),
              TextSpan(text: 'practical3_3_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical3_3_5'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children: [
              TextSpan(text: 'practical3_3_6'.tr),
              TextSpan(text: 'practical3_3_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical3_3_8'.tr),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'practical3_3_9'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'practical3_3_10'.tr),
                TextSpan(text: 'practical3_3_11'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
       sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'practical3_3_12'.tr),
              TextSpan(text: 'practical3_3_13'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical3_3_14'.tr),
              TextSpan(text: 'practical3_3_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical3_3_16'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Row(
          children: [
            Text(
              'practical3_3_17'.tr,
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
          'practical3_3_18'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            Text(
              'practical3_3_19'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                style: Get.textTheme.bodyText1,
                children:  [
                  TextSpan(text: 'practical3_3_20'.tr),
                  TextSpan(text: 'practical3_3_21'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'practical3_3_22'.tr),
                ]
              ),
            ),
            sizedBoxLow(),
            Text(
              'practical3_3_23'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical3_3_24'.tr),
                    TextSpan(text: 'practical3_3_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical3_3_26'.tr),
                  ]
              ),
            ),
          ],
          title: 'practical3_3_27'.tr,
          subtitle: 'additional'.tr,
          color: kblue,
          subtitleColor: kblue
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
            widgets: [
             RichText(
               text: TextSpan(
                 style: Get.textTheme.bodyText1,
                 children:  [
                   TextSpan(text: 'practical3_3_28'.tr),
                   TextSpan(text: 'practical3_3_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                   TextSpan(text: 'practical3_3_30'.tr),
                   TextSpan(text: 'practical3_3_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                   TextSpan(text: 'practical3_3_32'.tr),
                   TextSpan(text: 'practical3_3_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                   TextSpan(text: 'practical3_3_34'.tr),
                 ]
               ),
             ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical3_3_35'.tr),
                      TextSpan(text: 'practical3_3_36'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'practical3_3_37'.tr,
                        style: Get.textTheme.bodyText1,
                      )
                  ),
                ],
              ),
              Text(
                'practical3_3_38'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'practical3_3_39'.tr,
                        style: Get.textTheme.bodyText1,
                      )
                  ),
                ],
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical3_3_40'.tr),
                    TextSpan(text: 'practical3_3_41'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical3_3_42'.tr),
                    TextSpan(text: 'practical3_3_43'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical3_3_44'.tr),
                    TextSpan(text: 'practical3_3_45'.tr),
                    TextSpan(text: 'practical3_3_46'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical3_3_47'.tr),
                    TextSpan(text: 'practical3_3_48'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical3_3_49'.tr),
                      TextSpan(text: 'practical3_3_50'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical3_3_51'.tr),
                      TextSpan(text: 'practical3_3_52'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical3_3_53'.tr),
                    ]
                ),
              ),
              sizedBoxLow(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'practical3_3_54'.tr,
                        style: Get.textTheme.bodyText1,
                      )
                  ),
                ],
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical3_3_55'.tr),
                      TextSpan(text: 'practical3_3_56'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical3_3_57'.tr),
                      TextSpan(text: 'practical3_3_58'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical3_3_59'.tr),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical3_3_60'.tr,
                style: Get.textTheme.bodyText1,
              )
            ],
            title: 'practical3_3_61'.tr,
            subtitle: 'practical3_3_62'.tr,
            color: kred,
            subtitleColor: kred
        ),
        sizedBoxHigh(),
        Text(
          'practical3_3_63'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_64'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kred, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_65'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_66'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_67'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: kred, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_68'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_69'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_70'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'practical3_3_71'.tr),
              TextSpan(text: 'practical3_3_72'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical3_3_73'.tr),
              TextSpan(text: 'practical3_3_74'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical3_3_75'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'practical3_3_76'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'next'.tr,
            color: kblue,
            handler: () => Get.off(const PracticalCodesStart(), transition: Transition.rightToLeft)
        )
      ]
  );
}