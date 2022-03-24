import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/table.dart';
import 'package:practical_mnemonic/controllers/practical_codes_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_codes_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
class PracticalTableCodesInfo extends StatelessWidget {
  const PracticalTableCodesInfo({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final PracticalCodesController controller = Get.put(PracticalCodesController(), permanent: true);
    controller.clear();
    controller.title = title;
    controller.practicalKey = 'practical4_3';


    final Map<String, List<List<String>>> codesList = {
      'en': [
        [
          'Hydra',
          'Water bottle',
        ],
        [
          'Air ball',
          'Heal (first and kit)',
          'Hill',
        ],
        [
          'License',
          'Litter bin',
        ],
        [
          'Berkut',
          'Brilliant',
        ],
        [
          'Borned',
          'Borsch',
        ],
        [
          'Carbon car',
          'Coal'
        ],
        [
          'Nitro (balloon)',
        ],
        [
          'Aqualung',
          'Oxygen Mask',
        ],
        [
          'Toothpaste',
          'Toothbrush',
        ],
        [
          'Neon sign',
          'Neo from the Matrix',
        ],
        [
          'Salt',
          'Soda',
        ],
        [
          'Magnet',
          'Magician',
        ],
        [
          'Aluminum Saucepan',
        ],
        [
          'Lighter',
          'Cylinder hat',
        ],
        [
          'Bomb',
          'Phone',
        ],
        [
          'selfie stick with camera',
          'cotton swab (from sulfur in the ears)'
        ],
        [
          'Swimming pool (with chlorine)',
          'Clown'
        ],
        [
          'Agony',
          'Arf'
        ],
        [
          'Potato',
        ],
        [
          'Bone',
          'Calender',
        ],
        [
          'Scarf',
          'Portable scanner (when paying by card)'
        ],
        [
          'Titan Thanos',
          'Titanic',
        ],
        [
          'Ventilation',
          'Vanilla'
        ],
        [
          'Chrome-plated car',
        ],
        [
          'Mango',
          'Manga'
        ],
        [
          'Iron man',
          'Robot',
          'Iron',
        ],
        [
          'Cobra',
          'Colt',
        ],
        [
          'Nike sneakers',
          'Nick Fury',
        ],
        [
          'Copper wire',
          'Helicopter',
        ],
        [
          'Zing (bell)',
          'Zip',
        ],
        [
          'Gull',
          'Galaxy model',
          'Galoshes'
        ],
        [
          'German tank',
        ],
        [
          'Arsenal'
        ],
        [
          'Celebratory pie',
          'Celery'
        ],
        [
          'Brow',
        ],
        [
          'Creeper',
          'Mining farm (cryptocurrency mining)',
        ],
        [
          'Ruby',
          'Rubber',
        ],
        [
          'bodybuilder (strong)',
        ],
        [
          '3 IT specialists (it trio)'
        ],
        [
          'Circus',
        ],
        [
          'Nib',
          'Nimbus',
        ],
        [
          'Molina',
          'Mole',
        ],
        [
          'Wrench (technic)',
        ],
        [
          'Root',
          'stack of papers (routine)',
        ],
        [
          'Rod',
        ],
        [
          'Paladin (Star wars)',
          'Palace'
        ],
        [
          'Silver Medal',
        ],
        [
          'Cadilac'
        ],
        [
          'Elephant',
          'Indian',
        ],
        [
          'The Tin Soldier',
        ],
        [
          'Ant + monitor',

        ],
        [
          'Telephone (home)',
          'TV'
        ],
        [
          'Yogi',
          'Iodine dilution'
        ],
        [
          'Printer (xerox)'
        ],
        [
          'Caesar',
          'Lemon/Kiwi (vitamin C)'
        ],
        [
          'Barrier',
          'Barber',
          'Barbie'
        ],
        [
          'Lantern',
        ],
        [
          'Cerberus',
        ],
        [
          'Price label',
        ],
        [
          'Neo from the Matrix'
        ],
        [
          'Prometheus',
          'Prom hat'
        ],
        [
          'Some kind of samsung gadget',
          'Sambo'
        ],
        [
          'Stack of money (euro)'
        ],
        [
          'Gadget',
        ],
        [
          'Terrorist',
          'thermos'
        ],
        [
          'Disco ball',
          'Glass prism (Newton\'s experiment on the discovery of dispersion)',
        ],
        [
          'Golem',
          'Golf stick',
          'Goal (darts)'
        ],
        [
          'Dinosaur (era)'
        ],
        [
          'Pickaxe (tool)',
          'Tulip',
        ],
        [
          'IT terrorist (works remotely, via computer)'
        ],
        [
          'Lustre',
          'Cricket (glowing due to luminescence)',
        ],
        [
          'dog barks (haf)',
        ],
        [
          'Tarantula',
          'Tam-tam'
        ],
        [
          'Gas tanker',
          'Socket (voltage 220 Volts)',
          'Incandescent lamp'
        ],
        [
          'Ring',
        ],
        [
          'Osmium',
        ],
        [
          'Irises (flowers)'
        ],
        [
          'Plate',
        ],
        [
          'gold watch / cup'
        ],
        [
          'mercury thermometer',
        ],
        [
          'Tulip',
        ],
        [
          'Lid'
        ],
        [
          'Beads'
        ],
        [
          'Police car',
          'Polo t-shirt'
        ],
        [
          'asthma inhaler',
        ],
        [
          'Radon (assault rifle)',
          'radio receiver / radio transmitter',
        ],
        [
          'Eiffel Tower',
        ],
        [
          'Stalker (radiation)'
        ],
        [
          'Actor',
          'AK-47'
        ],
        [
          'Thor / Thor\'s Hammer',
        ],
        [
          'Meat (protein) + actinium',
          'Armor (protection) + actinium',
        ],
        [
          'Urn',
          'Radioactive Green barrel'
        ],
        [
          'Neptune with a trident or just a trident',
        ],
        [
          'You can take the view of the planet Pluto, because this is the only view of the planet.'
        ],
        [
          'Statue of Liberty',
        ],
        [
          'QR Scanner'
        ],
        [
          'Berkut',
        ],
        [
          'sushi california',
          'Kalina',
        ],
        [
          'Einstein writes formulas on the blackboard',
        ],
        [
          'Farm',
        ],
        [
          'Medal',
        ],
        [
          'Nobel Medal',
        ],
        [
          'Lowrider Car'
        ],
        [
          'Ford gt sportcar',
        ],
        [
          'Dubai tower',
        ],
        [
          'Sea boat',
          'bomb c4 + borscht',
          'Cider'
        ],
        [
          'Burrito',
        ],
        [
          'haskey',
        ],
        [
          'Mite',
          'Meteorite',
        ],
        [
          'Stadium'
        ],
        [
          'Roentgen machine'
        ],
        [
          'Cop'
        ],
        [
          'Honey'
        ],
        [
          'Flute'
        ],
        [
          'Kremlin',
          'Mosquito'
        ],
        [
          'Liver',
        ],
        [
          'Tennis racket',
          'Tennis ball'
        ],
        [
          'Ogre',
        ]
      ],
      'ru': [
        [
          'Бутылка воды',
          'Водопад',
        ],
        [
          'Воздушный шарик',
          'Гелевая ручка',
          'Гель',
        ],
        [
          'Литр воды',
          'Плита',
        ],
        [
          'Беркут',
          'Перила',
          'Берёза',
        ],
        [
          'Борщ',
          'Сосна (сосновый лес)',
        ],
        [
          'Уголь',
          'Бургер (простые углеводы)'
        ],
        [
          'Нитро (баллон)',
        ],
        [
          'Ребризер',
          'Кислородная маска',
          'Кислый лимон',
        ],
        [
          'Зубная паста',
          'Зубная щётка',
        ],
        [
          'Неоновая вывеска',
          'Нео из Матрицы',
        ],
        [
          'Соль',
        ],
        [
          'Магнит',
          'Маг',
        ],
        [
          'Алюминиевая кастрюля',
        ],
        [
          'Зажигалка',
          'Крем',
        ],
        [
          'Бомба',
          'голова форели (фосад форели)',
        ],
        [
          'Серый волк',
          'ватная палочка (от серы в ушах)'
        ],
        [
          'Бассейн (с хлором)',
          'Хлопок'
        ],
        [
          'Артист-гонщик',
          'Арфа'
        ],
        [
          'Календарь',
          'Суши калифорния',
        ],
        [
          'Кость',
        ],
        [
          'Скафандр',
          'Портативный сканер (при оплате по карте)'
        ],
        [
          'Титан Танос',
          'Титаник',
        ],
        [
          'Ванна',
          'Ваниль'
        ],
        [
          'Хромированный автомобиль',
          'Хрен'
        ],
        [
          'Маргарин',
          'Маргаритка'
        ],
        [
          'Железный человек',
          'Робот'
        ],
        [
          'Кольт',
          'Колба',
          'Кабан',
        ],
        [
          'Ник Фьюри',
          'Шар для боулинга (не кегль)',
        ],
        [
          'Медная проволка',
          'Мёд',
        ],
        [
          'Цилиндрическая шапка',
        ],
        [
          'Мигалки',
          'Модель галлактики',
          'Галоши'
        ],
        [
          'Немецкий танк',
        ],
        [
          'Мышь + як'
        ],
        [
          'Сельдерей',
          'Селедка'
        ],
        [
          'Броня',
          'Броневик',
        ],
        [
          'Крипер',
          'Майнинг ферма (добывание криптовалюты)',
        ],
        [
          'Рубин',
          'Руда',
          'Рубильник'
        ],
        [
          'Культурист, бодибилдер (сильный)',
        ],
        [
          '3 Айтишника (ИТ - IT)'
        ],
        [
          'Цирк',
        ],
        [
          'Обиван Кеноби в нитках',
        ],
        [
          'Кто-то на коленях молится',
          'Моль',
        ],
        [
          'Гаичный ключ',
          'Телефон'
        ],
        [
          'Корень (root)',
          'Стопка бумаг (рутина)'
        ],
        [
          'Новорожденный',
        ],
        [
          'Палладин',
          'Палатка'
        ],
        [
          'Серебряная медаль',
        ],
        [
          'Cadilac'
        ],
        [
          'Слон',
          'Индюк',
          'Индеец'
        ],
        [
          'тарелка с множеством овощей (all овощи)',
          'Оловяный солдатик'
        ],
        [
          'Кошка Suri',
          'Самолёт Су-27',
          'Сурикат',
        ],
        [
          'Телефон (домашний)',
          'Тело маникена'
        ],
        [
          'Раствор йода'
        ],
        [
          'Принтер (ксерокс)'
        ],
        [
          'Цезарь',
          'Лимон/киви (витамин C)'
        ],
        [
          'Бар',
          'Барбер',
          'Барби'
        ],
        [
          'Ланшыди + танк',
        ],
        [
          'Цербер',
        ],
        [
          'Праздничный торт',
        ],
        [
          'Нео',
          'Не один а много человек'
        ],
        [
          'Прометей',
          'Выпускникная лента (prom)',
          'Шляпа выпускника (prom)',
        ],
        [
          'Комар',
          'самокат'
        ],
        [
          'стопка денег (евро)'
        ],
        [
          'Одноглазый из "Гадкий я"',
        ],
        [
          'Террорист',
          'Термос + буй'
        ],
        [
          'Дискотечный шар',
          'Стекляная призма (опыт Ньютона по открытию дисперсии)',
        ],
        [
          'Голем',
          'Голый',
          'Клюшка для гольфа',
        ],
        [
          'Динозавр + буй (эра динозавров)'
        ],
        [
          'Кирка (tool - инструмент)',
          'Тюльпан',
        ],
        [
          'Террорист-Айтишник (работает дистанционно, через компьютер)'
        ],
        [
          'Люстра',
          'Сверчок (светится благодаря люменисценции)',
        ],
        [
          'Собака лает',
        ],
        [
          'тарантул',
          'Там-там'
        ],
        [
          'Волк (wolf)',
          'Розетка (напряжение 220 Вольт)',
          'Лампа накаливания'
        ],
        [
          'Редиска',
          'Редька',
        ],
        [
          'Осминог',
        ],
        [
          'Ириска с фантиком',
          'Ирисы (цветы)'
        ],
        [
          'Плотина бобра',
          'Плот',
        ],
        [
          'Золотое кольцо / часы / кубок'
        ],
        [
          'Градусник',
        ],
        [
          'Маникен тела (с узкой таллией)',
        ],
        [
          'Свинья'
        ],
        [
          'Вискос'
        ],
        [
          'Поло (футболка с воротником)',
          'Полотенце'
        ],
        [
          'Ас',
          'Остановка'
        ],
        [
          'Radon (штурмовая винтовка)',
          'радиоприемник / радиопередатчик',
        ],
        [
          'Эйфелева башня',
        ],
        [
          'Сталкер (радиация)'
        ],
        [
          'Аквалангист в тине',
          'Ак-47 в тине'
        ],
        [
          'Тор / молот Тора',
        ],
        [
          'Мясо (протеин) + актиний'
        ],
        [
          'Урна',
          'Радиоактивная зеленая бочка'
        ],
        [
          'Нептун с трезубцем',
        ],
        [
          'Можно взять образ планеты Плутон, поскольку это единственный образ планеты.'
        ],
        [
          'Статуя Свободы',
        ],
        [
          'Крюк',
          'QR-сканер'
        ],
        [
          'Беркут',
        ],
        [
          'Суши',
          'Калина',
        ],
        [
          'Эйнштейн на доске пишет формулы',
        ],
        [
          'Ферма',
        ],
        [
          'Мендаль',
        ],
        [
          'Нобелевская медаль',
        ],
        [
          'Лоурайдерская машина'
        ],
        [
          'Резинка',
          'Бесперебойник (обеспечивает резервное питание)'
        ],
        [
          'Дуб',
        ],
        [
          'Сибирский медведь',
          'Бомба C4 + Борщ',
          'Сидр'
        ],
        [
          'Буррито',
          'Бур',
        ],
        [
          'Хаски',
        ],
        [
          'Метеорит',
        ],
        [
          'Штаны, дающие дар - летать'
        ],
        [
          'Рентген аппарат'
        ],
        [
          'Копилка'
        ],
        [
          'Нитки + Honda'
        ],
        [
          'Флейта'
        ],
        [
          'Спасская башня'
        ],
        [
          'Печень (liver)',
          'Ливчик',
          'Морской ливчик (в звездах)'
        ],
        [
          'Теннисная ракетка',
          'Теннисный мячик'
        ],
        [
          'Костёр (огонь)',
          'Огр',
        ]
      ]
    };

   controller.chain.addAll(TableM.elements['data'.tr]!);

    for(int i = 0; i < codesList['data'.tr]!.length; i++) {
      controller.codes.add(codesList['data'.tr]![i]);
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Container(
          margin: const EdgeInsets.all(8),
          child: Text(
              title,
              style: Get.textTheme.headline1, maxLines: 2),
        ),
        leading: const CloseIconButton(isLec: true ,),
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
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'practical4_3_1'.tr),
              TextSpan(text: 'practical4_3_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'practical4_3_3'.tr),
              TextSpan(text: 'practical4_3_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'practical4_3_5'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical4_3_6'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        sizedBoxHigh(),
        const SizedBox(height: 200,child: ExpansionImage(path: 'assets/table_full.svg', isSvg: true,)),
        sizedBoxHigh(),
        sizedBoxHigh(),
        Row(
          children: [
            Text(
              'practical4_3_7'.tr,
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
          'practical4_3_8'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'practical4_3_9'.tr,
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