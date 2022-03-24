import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/states.dart';
import 'package:practical_mnemonic/controllers/carousel_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/course_pages/module3/prac_states1_info2.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class PracticalStates1Info extends StatelessWidget {
  PracticalStates1Info({Key? key, required this.title,}) : super(key: key);

  final String title;
  final MyCarouselController myCarouselController = Get.put(MyCarouselController());
  final carouselController = CarouselController();


  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);

    Map<String, String> nameOfState = {
      'en': 'State name...',
      'ru': 'Название штата...'
    };

    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = 40;
    pairsController.maxSecondsCheck = 20;
    pairsController.isChainPractical = true;
    pairsController.maxArrayInterval = 1;
    pairsController.isLieList = true;
    pairsController.countOfOnePass = 7;
    pairsController.isInfoPageExist = true;
    pairsController.isFormCheck = true;
    pairsController.isSingleChain = true;
    pairsController.formCheckBoxHint = 'view'.tr;
    pairsController.formHintText = nameOfState['data'.tr]!;
    pairsController.isFormCheckBoxExist = true;
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalChainResult();
    pairsController.nextPageInfo = const PracticalStates1Info2();
    pairsController.practicalKey = 'practical3_2';
    pairsController.enableStatistics = false;

   final Map<String, List<String>> descriptionList = {
     'en': [
       'There is a state, and there is a capital. Despite the fact that geographically they are very far from each other, their names are identical. Therefore, you can encode by meaning. The capital is associated with the White House. Connect it with the foundation of the Statue of Liberty.',
       'It looks like the word mountain. Connect it with the upper right corner of the White house.',
       'I encode by sound - duck (regular or Donald duck). North - represent a duck in the snow, frozen. Hook it to the very top of the mountain.',
       'Sot is an alcoholic. minnie - a child alcoholic.',
       'Whiskey',
       'Minigun',
       'Associated with Empire State Building',
     ],
     'ru': [
       'Есть штат, а есть столица. Несмотря на то, что географически они очень далеко друг от друга, названия у них идентичны. Поэтому закодировать можно по значению. Столица ассоциируется с белым домом. Связываем его с основанием  статуи свободы.',
       'Похоже на английское слово гора - mountain. Соединяем её с правым верхним углом белого дома.',
       'Кодируется либо как два кота, либо как дональд Дак, или просто утка - duck. Северная - представляем утку или двух котов замерзшими, в снегу, и цепляем их на самый верх горы.',
       'Кодируется как улей с маленькими сотами, которые дональд Дак забивает ледяными минералками. И соты настолько маленькие, что ни вода, ни пчелы не могут туда протиснуться.',
       'Похоже на вискос или на виски. Увеличиваем соту и пытаемся затолкать туда вискос.',
       'Похоже на меч и gun (огнестрельное оружие), можно соединить их скотчем, а можно представить огнестрел со штыком. Протыкаем вискос.',
       'Ассоциируется с эмпайр-стэйт-билдинг. цепляем небоскреб на острый конец нашей пушки-меча.',
     ]
   };


    pairsController.chain.addAll(States.statesList['data'.tr]![0]);
    pairsController.descriptionList.addAll(descriptionList['data'.tr]!);
    pairsController.lieValues.addAll(pairsController.chain);

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
                'practical3_2_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical3_2_2'.tr),
                      TextSpan(text: 'practical3_2_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'practical3_2_4'.tr),
                    TextSpan(text: 'practical3_2_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical3_2_6'.tr),
                    TextSpan(text: 'practical3_2_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical3_2_8'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical3_2_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Image.asset('assets/stature.png', height: 1000,),
              sizedBoxHigh(),
              Text(
                'practical3_2_10'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical3_2_11'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical3_2_12'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical3_2_13'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: [
                      TextSpan(text: 'practical3_2_14'.tr),
                      TextSpan(text: 'practical3_2_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical3_2_16'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical3_2_17'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              const ExpansionImage(path: 'assets/states/states_number.svg', isSvg: true, scale: 2.5,),
              Text(
                'practical3_2_18'.tr,
                style: const TextStyle(
                    fontSize: 16,
                    color: kblueDark
                ),
                textAlign: TextAlign.center,
              ),
              sizedBoxHigh(),
              Text(
                'practical3_2_19'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
            ],
          ),
        ),
        Obx( () => Column(
            children: [
              CarouselSlider.builder(
                carouselController: carouselController,
                itemCount: States.statesList['data'.tr]!.length,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  enlargeStrategy:  CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: false,
                  height: 340,
                  onPageChanged: (index, reason) => myCarouselController.activeIndex.value = index
                ),
                itemBuilder: (context, index, realIndex) {
                  int stateIndex = 0;
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35)),
                          ),
                          height: 40,
                          child: Center(
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...States.statesList['data'.tr]![index].map((state) {
                                    stateIndex++;
                                    return Text(
                                    '$stateIndex. $state',
                                      style: TextStyle(
                                        fontWeight: stateIndex == 1 ? FontWeight.bold : FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 18,
                                        letterSpacing: 1.8,
                                        height: 1.4
                                      ),
                                  );
                                  }).toList(),
                                ]
                              ),
                            )
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              sizedBoxHigh(),
              AnimatedSmoothIndicator(
                activeIndex: myCarouselController.activeIndex.value,
                count: States.statesList['data'.tr]!.length,
                duration: const Duration(milliseconds: 100),
                onDotClicked: (index) => carouselController.animateToPage(index),
                effect: const SlideEffect(
                  dotHeight: 20,
                  dotWidth: 20,
                  activeDotColor: Colors.black,
                  dotColor: kgreyLinearPB,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBoxHigh(),
              Text(
                'practical3_2_20'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical3_2_21'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical3_2_22'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical3_2_23'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
            'data'.tr == 'ru' ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: kred),
                ),
                RichText(
                  text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children: const [
                        TextSpan(text: 'Чтобы быстрее запомнить, желательно '),
                        TextSpan(text: 'проговаривать вслух либо "про себя" название штата несколько раз', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' и при этом '),
                        TextSpan(text: 'представлять соединение образов', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text:  '.'),
                      ]
                  ),
                ),
              ],
            ) : Container(),
              sizedBoxLow(),
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
                    children: [
                      TextSpan(text: 'practical3_2_24'.tr),
                      TextSpan(text: 'practical3_2_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical3_2_26'.tr),
                      TextSpan(text: 'next'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
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




