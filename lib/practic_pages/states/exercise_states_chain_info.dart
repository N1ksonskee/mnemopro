import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/carousel_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../constants/states.dart';


class ExerciseStatesChainInfo extends StatelessWidget {
  ExerciseStatesChainInfo({Key? key,
    required this.title,
  }) : super(key: key);


  final String title;
  final MyCarouselController myCarouselController = Get.put(MyCarouselController());
  final carouselController = CarouselController();


  @override
  Widget build(BuildContext context) {

    Map<String, String> nameOfState = {
      'en': 'State name...',
      'ru': 'Название штата...'
    };



    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.maxArrayInterval = 7;
    pairsController.maxSecondsStart = 40;
    pairsController.title = title;
    pairsController.isFormCheckBoxExist = true;
    pairsController.isFormCheck = true;
    pairsController.isChainPractical = true;
    pairsController.formHintText = nameOfState['data'.tr]!;
    pairsController.formCheckBoxHint = 'view'.tr;
    pairsController.isRepeatPractical = true;
    pairsController.isCustomReferenceList = true;
    pairsController.practicalKey = 'states';
    pairsController.enableStatistics = GetStorage().read('states-number') ? false : true;

    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalChainResult();


    for(int i = 0; i < States.statesList['data'.tr]!.length; i++) {
      pairsController.chainsToFix.add(
        ChainToFix(chain: States.statesList['data'.tr]![i])
      );

      for(int j = 0; j < States.statesList['data'.tr]![i].length; j++) {
        pairsController.chain.add(States.statesList['data'.tr]![i][j]);
      }
    }

    for(int i = 0; i < States.statesList['data'.tr]!.length; i++) {
      pairsController.chains.add(States.statesList['data'.tr]![i]);
    }

    pairsController.referencesList.addAll(States.statesSupportsList['data'.tr]!);

    pairsController.isCodesExist = true;
    pairsController.codesList.addAll(States.codesList['data'.tr]!);


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
                    children: [
                      TextSpan(text: 'states_seq_1'.tr),
                      TextSpan(text: 'states_seq_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'states_seq_3'.tr),
                      TextSpan(text: 'states_seq_4'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'states_seq_5'.tr),
                      TextSpan(text: 'states_seq_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'states_seq_7'.tr),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'states_seq_8'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Image.asset('assets/stature.png', height: 1000,),
              sizedBoxHigh(),
              Text(
                'states_seq_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_seq_10'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_seq_11'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'states_seq_12'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'states_seq_13'.tr),
                      TextSpan(text: 'states_seq_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'states_seq_15'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_seq_16'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              const ExpansionImage(path: 'assets/states/states_number.svg', isSvg: true, scale: 2.5,),
               Text(
                'states_seq_17'.tr,
                style: const TextStyle(
                    fontSize: 16,
                    color: kblueDark
                ),
                textAlign: TextAlign.center,
              ),
              sizedBoxHigh(),
              Text(
                'states_seq_18'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
            ],
          ),
        ),
        Obx( () =>
            Column(
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
                'states_seq_19'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'states_seq_20'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'states_seq_21'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_seq_22'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_seq_23'.tr,
                style: Get.textTheme.bodyText1,
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



