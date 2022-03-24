import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';


class ExerciseSubjectsChainInfo extends StatelessWidget {
  const ExerciseSubjectsChainInfo({Key? key, required this.title,}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

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
                   children: const [
                     TextSpan(text: 'Сперва определимся с тем, как мы будем запоминать последовательность из '),
                     TextSpan(text: '85 субъектов.', style: TextStyle(fontWeight: FontWeight.bold)),
                   ]
                 ),
               ),
              sizedBoxHigh(),
              Text(
                'Создание структуры',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: const [
                      TextSpan(text: 'Первым этапом в любом структурном запоминании является '),
                      TextSpan(text: 'создание ствола дерева', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: ' этой структуры. То есть, сперва необходимо запомнить последовательность из Федеральных округов. Я предлагаю следующую последовательность по расположению:'),
                    ]
                ),
              ),
              sizedBoxLow(),
              const Text(
                'Вы можете увеличить или уменьшить изображение, нажав на него',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16, fontWeight: FontWeight.normal),
              ),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: SizedBox(height: 200, child: ExpansionImage(path: 'assets/subjects/subjects_struct.svg', isSvg: true,))),
              sizedBoxHigh(),
              sizedBoxHigh(),
              Text(
                '1. Северо-Кавказский (СКФО)',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                '2. Южный (ЮФО)',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                '3. Центральный (ЦФО)',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                '4. Северо-Западный (СЗФО)',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                '5. Приволжский (ПФО)',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                '6. Уральский (УФО)',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                '7. Сибирский (СФО)',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                '8. Дальневосточный (ДФО)',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: const [
                    TextSpan(text: 'Вы можете запомнить их '),
                    TextSpan(text: 'обычной цепочкой', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' или '),
                    TextSpan(text: 'методом лоций', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ', предварительно выделив 8 подобъектов. Каким методом запоминать вы решаете сами.'),
                  ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'Создание последовательностей',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'Следующим этапом будет запоминание всех восьми последовательностей из субъектов в каждом ФО.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Первой последовательностью будет цепочка из субъектов СКФО. При этом, первый элемент этой цепочки вы цепляете на первый элемент ствола дерева, то есть на образ СКФО. А саму последовательность из субъектов можете запоминать цепочкой, либо цепочкой-матрешкой (если планируете цеплять на субъекты больше 2-ух видов доп. информации).',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Также вы запоминаете остальные последовательности, соединяя первый  элемент с соответствующим элементом ствола дерева.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'Полная проверка',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'Как только вы запомните ствол и все последовательности, то у вас в голове будет готовая структура. Вы по ней можете двигаться, вспоминая сначала соответствующий ФО, а затем саму последовательность.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'В конце вас ждет полная проверка на все субъекты РФ.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'В каком порядке запоминать субъекты РФ каждого ФО?',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'По аналогии со штатами, мы будем запоминать по расположению. В процессе упражнений вы можете увидить эту последовательность в виде картинки. Вы можете также увеличить или уменьшить эту картинку.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'Могу я использовать последовательность ЦФО из курса?',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: const [
                    TextSpan(text: 'Вы можете оставить последовательность из субъектов ЦФО, запомненную в курсе ранее методом фильма. Тогда не забудьте прицепить '),
                    TextSpan(text: 'ворону', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' на образ ЦФО.')
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'Либо вы можете связать образы ЦФО заново в классическую цепочку или цепочку-матрешку.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'Как кодировать элементы?',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'Все субъекты и федеральные округа вы кодируете сами. Если у вас возникают сложности, то вы можете воспользоваться подсказками. Но опять же, напоминаю, что свои коды работают лучше.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomExpansionTileLec(
                widgets: [
                  Text(
                    'В самих упражнениях вам не обязательно запоминать к какому типу относится субъект РФ, тем более у вас не будет на это времени. Это вы можете сделать уже после.',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  RichText(
                    text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children: const [
                        TextSpan(text: 'Из 85 субъектов существует '),
                        TextSpan(text: '6 типов ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'их разновидностей: '),
                      ]
                    ),
                  ),
                  sizedBoxHigh(),
                  Text(
                    '- Республики (22)',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    '- Края (9)',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    '- Области (46)',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    '- Города федерального значения (3)',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    '- Автономные округа (4)',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    '- Автономная область (1, Еврейская)',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxHigh(),
                  Text(
                    'Поскольку последних трех не так много, то их можно и так запомнить.',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    'У нас остается только 3 типа субъектов: республики, края, области. А любую дополнительную информацию в которой мало типов этой информации мы запоминаем методом характеристик.',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    'Поэтому вы придумываете характеристики под эти типы субъектов и применяете эти характеристики на образах субъектов. При этом важно это делать, когда вы уже запомнили всю структуру, то есть вторым заходом.',
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                ],
                title: 'Как запомнить тип субъекта?',
                subtitle: 'дополнительно',
                color: kblue,
                subtitleColor: kblueDark
              ),
              sizedBoxHigh(),
              Row(
              children: [
                Text(
                  'Время на запоминание',
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
                  children: const [
                    TextSpan(text: 'На кодирование и связывание образов у вас '),
                    TextSpan(text: '40 секунд.', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' Если уже связали, нажимайте '),
                    TextSpan(text: 'ДАЛЕЕ', style: TextStyle(fontWeight: FontWeight.bold))
                  ]
                ),
              ),
              sizedBoxHigh(),
              CustomButton(
                title: 'ПОНЯТНО',
                color: kgreyDark,
                handler: () {
                  AuthService().upgradeData('subjects-1');
                  Get.back();
                },
              )
            ],
          ),
        )
      ]
  );
}



