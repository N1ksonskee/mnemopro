import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';


class ExerciseSubjectsNumberInfo extends StatelessWidget {
  const ExerciseSubjectsNumberInfo({Key? key, required this.title,}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true),
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
               'Что на самом деле будем учить',
               style: Get.textTheme.headline2,
             ),
              sizedBoxHigh(),
              Text(
                'Во-первых, стоит упомянуть, что коды субъектов - это те же коды ГИБДД.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Только для некоторых регионов кодов ГИБДД несколько, в отличие от кодов субъектов. Например, для Иркутской области, код субъекта - 38, а кодов ГИБДД три - 38, 85, 138.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Мы будем учить коды ГИБДД, причем только двузначные. То есть, для Иркутской области мы запомним коды 38 и 85. Вот почему вам понадобятся ЧБК именно от 01 до 99.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'Как цеплять?',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'Так же как и с порядком присоединения штатов США, двузначные цифры нужно цеплять на образы субъектов. ',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Если цифра одна, то вы её цепляете слева. Если есть вторая цифра, то цепляете её справа.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Уменьшаете ли вы числа или нет, зависит от того, запоминали ли вы обычной цепочкой или цепочкой-матрешкой.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'В отличие от штатов, мы будем идти по той последовательности субъектов, которую вы выучили ранее  и цеплять ту цифру (или цифры), которая соответствуют региону, а не идти по порядку цифр.',
                style: Get.textTheme.bodyText1,
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
                      TextSpan(text: 'Поскольку вы знаете ЧБК, то вы не тратите время на кодирование, соответственно и на запоминание тратится меньше. С другой стороны, вам нужно выделить место на образе штата. Поэтому время увеличено до '),
                      TextSpan(text: '30 секунд', style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: '. '),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'Регионы, имеющие 2 кода ГИБДД будут повторяться дважды с тем же временем в 30 секунд.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'Могу я запоминать рефлекторно?',
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'Поскольку у нас на любые знаки (в том числе и цифры) может быть только одна реакция, то вы не можете связывать рефлекторно несколько типов информации с цифрами, например, коды субъектов, элементы таблицы менделеева, порядок присоедиения и др. Вы можете попробовать это сделать, но в конце концов они будут перетерать друг-друга и потом забудятся. Поэтому, желательно, чтобы у вас было что-то одно, когда вы вспоминаете цифру.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'Но вы можете цеплять цифры на разные типы информации. В связи с этим, в данном упражнении (и во всех следующих упражнениях на знаки) будет проверка только в одну сторону.',
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'ПОНЯТНО',
                  color: kgreyDark,
                  handler: () {
                    AuthService().upgradeData('subjects-number-1');
                    Get.back();
                  }
              )
            ],
          ),
        )
      ]
  );
}



