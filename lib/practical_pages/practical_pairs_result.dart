import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/expansion_tile_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/main.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_pairs.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import 'package:practical_mnemonic/widgets/image_dialog.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';



class PracticalPairsResult extends StatelessWidget {
  const PracticalPairsResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldClose = await showWarningDialog();
        return shouldClose ?? false;
      },
      child: Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text(Get.find<PairsController>().title, style: Get.textTheme.headline1, maxLines: 2,),
          leading: const CloseIconButton(),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: _buildBody(),
        ),
      ),
    );
  }

  Widget _buildBody() {
    final PairsController pairsController = Get.find<PairsController>();
    String path = '';
    String titleResult = '';
    Color? titleColor;
    final int rightCount = pairsController.rightAnswersPairs.length;
    final int count = pairsController.rightAnswersPairs.length + pairsController.lieAnswersPairs.length + pairsController.timesUpPairs.length;
    final isPerfect = pairsController.lieAnswersPairs.isEmpty && pairsController.timesUpPairs.isEmpty;


    String perfectText = '';
    String perfectTextRepeat = '';
    if(pairsController.isLastSetGlobal && pairsController.isLastSet) {
      perfectText = 'memorized_all_n_pairs'.trParams({'count': pairsController.pairs.length.toString()});
    } else if(!pairsController.isLastSetGlobal && pairsController.isLastSet) {
      int globalPairsCount = pairsController.pairs.length ~/ (pairsController.maxGlobalArrayInterval - 1); // 50
      perfectText = 'repeat_prev_n_pairs'.trParams({'count': globalPairsCount.toString()});
    } else {

      int globalPairsCount = 0;
      if(pairsController.maxGlobalArrayInterval - 1 != 0) {
        globalPairsCount = pairsController.pairs.length ~/ (pairsController.maxGlobalArrayInterval - 1);
      } // 50
      int factor = globalPairsCount * (pairsController.globalArrayInterval - 1); // 50 100 150
      perfectText = 'have_already_memorized_n_pairs'.trParams({'count': (pairsController.arrayInterval * pairsController.countOfOnePass  + factor).toString()});

      if(pairsController.isRepeatPractical) {
        perfectTextRepeat = '2_rep'.trParams({'count': count.toString()});
      }
    }

    if(rightCount == count) {
      path = 'assets/perfect.svg';
      titleResult = 'perfect'.tr;
      titleColor = kblue;
    }
    else if(rightCount / count >= 0.33) {
      path = 'assets/ok.svg';
      titleResult = 'good'.tr;
      titleColor = kblue;
    }
    else {
      path = 'assets/bad.svg';
      titleResult = 'bad'.tr;
      titleColor = kred;
    }

    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());
    for(int i = 0; i < 3; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          sizedBoxHigh(),
          SvgPicture.asset(path, height: 200),
          sizedBoxHigh(),
          Text(
              titleResult,
              style: TextStyle(color: titleColor, fontSize: 40, fontWeight: FontWeight.bold)),
          sizedBoxHigh(),
          Text(
            '$rightCount/$count',
            style: const TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          sizedBoxHigh(),
          pairsController.rightAnswersPairs.isNotEmpty ? CustomExpansionTilePairs(
            expansionTileIndex: 0,
            color: kblue,
            title: pairsController.repeatInterval == 1 || pairsController.repeatInterval == 4 ? 'correct'.tr : 'remember'.tr,
            leading: const Icon(
                Icons.check_circle,
                color: kblue,
                size: 60
            ),
            widgets: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: pairsController.rightAnswersPairs.length,
                itemBuilder: (_, i) => Container(
                  decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: kblue.withOpacity(0.2), width: 1))
                  ),
                  height: pairsController.isLongOneValue ? 120 : 80,
                  alignment: Alignment.center,
                  child: pairsController.isNamePractical ? Row(
                    children: [
                      Hero(
                        tag: pairsController.rightAnswersPairs[i].firstValue,
                        child: GestureDetector(
                          onTap: () => Get.to(
                            ImageDialog(path: pairsController.rightAnswersPairs[i].firstValue),
                            opaque: false,
                          ),
                          child: ClipOval(
                            child: Image.network(
                                pairsController.rightAnswersPairs[i].firstValue,
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25,),
                      Text(
                        pairsController.rightAnswersPairs[i].secondCorrect,
                        style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                      )
                    ],
                  ) : pairsController.isFlagsPractical ? Row(
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => Get.dialog(
                            Dialog(
                              child: SizedBox(height: 250 ,child: ExpansionImage(path: pairsController.rightAnswersPairs[i].firstValue, isSvg: true,)),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            )
                        ),
                        child: SizedBox(
                          height: 50,
                          width: 70,
                          child: SvgPicture.asset(
                              pairsController.rightAnswersPairs[i].firstValue,
                              fit: BoxFit.cover
                          ),
                        ),
                      ),
                      const SizedBox(width: 25,),
                      Expanded(
                        child: Text(
                          pairsController.rightAnswersPairs[i].secondCorrect,
                          style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                        ),
                      )
                    ],
                  ) : Text(
                    '${pairsController.rightAnswersPairs[i].firstValue} - ${pairsController.rightAnswersPairs[i].secondCorrect}',
                    style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                    textAlign: TextAlign.center,
                  ),
                )
              )
            ]
          ) : Container(),
          sizedBoxHigh(),
          !isPerfect && !pairsController.isNotCheck ? Column(
            children: [
              Text(
                'fix_errors'.tr,
                style: Get.textTheme.headline2!.copyWith(color: kred),
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),
          pairsController.lieAnswersPairs.isNotEmpty ? Column(
            children: [
              CustomExpansionTilePairs(
                expansionTileIndex: 1,
                color: kred,
                title: pairsController.repeatInterval == 1 || pairsController.repeatInterval == 4 ? 'incorrect'.tr : 'not_remember'.tr,
                leading: const Icon(
                    Icons.cancel,
                    color: kred,
                    size: 60
                ),
                widgets: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: pairsController.lieAnswersPairs.length,
                    itemBuilder: (_, i) => Container(
                      decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: kred.withOpacity(0.2), width: 1))
                      ),
                      height: pairsController.isLongOneValue ? 140 : 100,
                      alignment: Alignment.center,
                      child: pairsController.isNamePractical ? Row(
                       children: [
                          Hero(
                            tag: pairsController.lieAnswersPairs[i].firstValue,
                            child: GestureDetector(
                              onTap: () => Get.to(
                                ImageDialog(path: pairsController.lieAnswersPairs[i].firstValue),
                                opaque: false,
                              ),
                              child: ClipOval(
                                child: Image.network(
                                    pairsController.lieAnswersPairs[i].firstValue,
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 25,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              pairsController.lieAnswersPairs[i].secondCorrect,
                              style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                            ),
                            const SizedBox(height: 4),
                            RichText(
                              text: TextSpan(
                                  style: Get.textTheme.bodyText1!.copyWith(color: kred, fontSize: 16),
                                  children: [
                                    TextSpan(text: 'your_answer'.tr),
                                    TextSpan(text: pairsController.lieAnswersPairs[i].secondValue, style: const TextStyle(fontWeight: FontWeight.bold)),
                                  ]
                              ),
                            )
                          ],
                        ),
                      ],
                    ) : pairsController.isFlagsPractical ? Row(
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => Get.dialog(
                            Dialog(
                              child: SizedBox(height: 250 ,child: ExpansionImage(path: pairsController.lieAnswersPairs[i].firstValue, isSvg: true,)),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            )
                          ),
                          child: SizedBox(
                            height: 50,
                            width: 70,
                            child: SvgPicture.asset(
                              pairsController.lieAnswersPairs[i].firstValue,
                              fit: BoxFit.cover
                            ),
                          ),
                        ),
                        const SizedBox(width: 25,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                pairsController.lieAnswersPairs[i].secondCorrect,
                                style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                              ),
                              const SizedBox(height: 4),
                              RichText(
                                text: TextSpan(
                                  style: Get.textTheme.bodyText1!.copyWith(color: kred, fontSize: 16),
                                  children: [
                                    TextSpan(text: 'your_answer'.tr),
                                    TextSpan(text: pairsController.lieAnswersPairs[i].secondValue, style: const TextStyle(fontWeight: FontWeight.bold)),
                                  ]
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ) : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${pairsController.lieAnswersPairs[i].firstValue} - ${pairsController.lieAnswersPairs[i].secondCorrect}',
                          style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 4,),
                        pairsController.repeatInterval == 1 || pairsController.repeatInterval == 4 ? RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: Get.textTheme.bodyText1!.copyWith(color: kred, fontSize: 16),
                              children: [
                                TextSpan(text: 'your_answer'.tr),
                                TextSpan(text: pairsController.isSmallTitle ? pairsController.lieAnswersPairs[i].secondValue : '${pairsController.lieAnswersPairs[i].firstValue} - ${pairsController.lieAnswersPairs[i].secondValue}', style: const TextStyle(fontWeight: FontWeight.bold)),
                              ]
                          ),
                        ) : Container()
                      ],
                    ),
                  )
                )
              ]
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),

          pairsController.timesUpPairs.isNotEmpty ? Column(
            children: [
              CustomExpansionTilePairs(
                expansionTileIndex: 2,
                color: kgrey,
                title: 'times_up'.tr,
                leading: const Icon(
                    Icons.timer,
                    color: kgrey,
                    size: 60
                ),
                widgets: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: pairsController.timesUpPairs.length,
                    itemBuilder: (_, i) => Container(
                        decoration: BoxDecoration(
                        border: Border(top: BorderSide(color: kgrey.withOpacity(0.2), width: 1))
                      ),
                      height: pairsController.isLongOneValue ? 120 : 80,
                      alignment: Alignment.center,
                      child: pairsController.isNamePractical ? Row(
                        children: [
                          Hero(
                            tag: pairsController.timesUpPairs[i].firstValue,
                            child: GestureDetector(
                              onTap: () => Get.to(
                                ImageDialog(path: pairsController.timesUpPairs[i].firstValue),
                                opaque: false,
                              ),
                              child: ClipOval(
                                child: Image.network(
                                    pairsController.timesUpPairs[i].firstValue,
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 25,),
                          Expanded(
                            child: Text(
                              pairsController.timesUpPairs[i].secondCorrect,
                              style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                            ),
                          )
                        ],
                      ) : pairsController.isFlagsPractical ? Row(
                        children: [
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () => Get.dialog(
                                Dialog(
                                  child: SizedBox(height: 250 ,child: ExpansionImage(path: pairsController.timesUpPairs[i].firstValue, isSvg: true,)),
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                )
                            ),
                            child: SizedBox(
                              height: 50,
                              width: 70,
                              child: SvgPicture.asset(
                                  pairsController.timesUpPairs[i].firstValue,
                                  fit: BoxFit.cover
                              ),
                            ),
                          ),
                          const SizedBox(width: 25,),
                          Text(
                            pairsController.timesUpPairs[i].secondCorrect,
                            style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                          )
                        ],
                      ) : Text(
                        '${pairsController.timesUpPairs[i].firstValue} - ${pairsController.timesUpPairs[i].secondCorrect}',
                        style: Get.textTheme.bodyText1!.copyWith(fontSize: pairsController.isSmallTitle ? 20 : 24),
                        textAlign: TextAlign.center,
                      ),
                    )
                  )
                  ]
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),
          isPerfect && pairsController.repeatInterval == 1 ? Text(
            perfectText,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, color: kblue, fontWeight: FontWeight.normal),
          ) : Container(),
          isPerfect && pairsController.isRepeatPractical && pairsController.repeatInterval == 1 ? sizedBoxLow() : Container(),
          isPerfect && pairsController.isRepeatPractical && pairsController.repeatInterval == 1 ? Text(
            perfectTextRepeat,
            style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ) : Container(),

          isPerfect && pairsController.repeatInterval == 3 && !pairsController.isCodesTrainPractical ? Text(
            'opposite_direction'.tr,
            style:  Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ) : Container(),
          isPerfect && pairsController.repeatInterval == 6
              && pairsController.arrayInterval != pairsController.maxArrayInterval - 1
              && !pairsController.isLastSet ? Text(
            'lets_learn_next_n_pairs'.trParams({'count': count.toString()}),
            style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ) : Container(),
          isPerfect && pairsController.arrayInterval == pairsController.maxArrayInterval - 1 && pairsController.repeatInterval == 6
              ? Text('lets_repeat_all_n_pairs'.trParams({'count': pairsController.pairs.length.toString()}), style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
              : Container(),

          sizedBoxLow(),
          (isPerfect || pairsController.isNotCheck) &&
              pairsController.arrayInterval == pairsController.maxArrayInterval - 1 &&
              pairsController.isLastSetGlobal && !pairsController.isRepeatPractical ? Text(
            'remain_repeat_all_n_pairs'.trParams({'count': pairsController.pairs.length.toString()}),
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
          ) : Container(),
          isPerfect &&
              pairsController.isLastSet &&
              pairsController.globalArrayInterval == pairsController.maxGlobalArrayInterval - 1
              && !pairsController.isRepeatPractical ? Text(
            'remain_repeat_all_n_pairs'.trParams({'count': pairsController.pairs.length.toString()}),
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
          ) : Container(),
          isPerfect &&
              pairsController.arrayInterval == pairsController.maxArrayInterval - 1 &&
              pairsController.globalArrayInterval < pairsController.maxGlobalArrayInterval ? Text(
            'lets_go_prev_n_pairs'.trParams({'count': (pairsController.pairs.length ~/ (pairsController.maxGlobalArrayInterval - 1)).toString()}),
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
          ) : Container(),
          sizedBoxHigh(),
          CustomButton(
              title: pairsController.isCheckExercise ? 'finish'.tr : pairsController.isCodesTrainPractical ? 'try_again'.tr :
              isPerfect || pairsController.isNotCheck ? pairsController.isLastSetGlobal && pairsController.isLastSet && (pairsController.repeatInterval == 1 || pairsController.repeatInterval == 6) ? 'finish'.tr : 'continue'.tr : 'try_again'.tr,
              color: isPerfect || pairsController.isCheckExercise ? kblue : kred,
              handler: () {
                if(pairsController.isCodesTrainPractical) {
                  Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                } else if(pairsController.isCheckExercise) {
                  Get.back();
                } else if(isPerfect || pairsController.isNotCheck) {
                  // после завершения 50 100 150
                  if(pairsController.isLastSet) {
                    // после завершения 150 выходим из упражнения


                    if(pairsController.isLastSetGlobal) {
                      if(pairsController.repeatInterval == 3) {
                        pairsController.repeatInterval = 6;
                        pairsController.isCorrection = false;
                        Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                      } else {
                        if(pairsController.enableStatistics && !pairsController.isNotCheck) {
                          if(pairsController.enableStatistics && !pairsController.isNotCheck) AuthService().upgradeStatistics();
                        } else if(pairsController.practicalKey == 'practical6_1' && !GetStorage().read('lec6_2')) {
                          if(pairsController.enableStatistics && !pairsController.isNotCheck) AuthService().upgradeStatistics();
                        } else if(pairsController.practicalKey == 'practical6_2' && !GetStorage().read('lec6_4')) {
                          if(pairsController.enableStatistics && !pairsController.isNotCheck) AuthService().upgradeStatistics();
                        }

                        else if(pairsController.practicalKey == 'practical1_2') {
                          AuthService().upgradeData('practical1_3');
                        } else if(pairsController.practicalKey == 'practical1_3') {
                          AuthService().upgradeData('practical1_4');
                        } else if(pairsController.practicalKey == 'practical4_2') {
                          AuthService().upgradeData('lec4_3');
                        } else if(pairsController.practicalKey == 'practical5_3') {
                          AuthService().upgradeData('lec5_3');
                        } else if(pairsController.practicalKey == 'practical6_1') {
                          AuthService().upgradeData('lec6_2');
                        }
                         else if(pairsController.practicalKey == 'practical6_2') {
                          AuthService().upgradeData('lec6_4');
                        } else if(pairsController.practicalKey == 'practical7_1') {
                          AuthService().upgradeData('lec7_6');
                        } else if(pairsController.practicalKey == 'states-dest') {
                          AuthService().upgradeData('states-dest-done');
                        } else if(pairsController.practicalKey == 'states-number') {
                          AuthService().upgradeData('states-number-done');
                        } else if(pairsController.practicalKey == 'subjects-number-1') {
                          AuthService().upgradeData('subjects-number-2');
                        } else if(pairsController.practicalKey == 'subjects-number-2') {
                          AuthService().upgradeData('subjects-number-3');
                        } else if(pairsController.practicalKey == 'subjects-number-3') {
                          AuthService().upgradeData('subjects-number-4');
                        } else if(pairsController.practicalKey == 'subjects-number-4') {
                          AuthService().upgradeData('subjects-number-5');
                        } else if(pairsController.practicalKey == 'subjects-number-5') {
                          AuthService().upgradeData('subjects-number-6');
                        } else if(pairsController.practicalKey == 'subjects-number-6') {
                          AuthService().upgradeData('subjects-number-7');
                        } else if(pairsController.practicalKey == 'subjects-number-7') {
                          AuthService().upgradeData('subjects-number-8');
                        } else if(pairsController.practicalKey == 'subjects-number-8') {
                          AuthService().upgradeData('subjects-number-9');
                        } else if(pairsController.practicalKey == 'subjects-number-9') {
                          AuthService().upgradeData('subjects-number-10');
                        }

                          else if(pairsController.practicalKey == 'world-capital-1') {
                          AuthService().upgradeData('world-capital-2');
                        } else if(pairsController.practicalKey == 'world-capital-2') {
                          AuthService().upgradeData('world-capital-3');
                        } else if(pairsController.practicalKey == 'world-capital-3') {
                          AuthService().upgradeData('world-capital-4');
                        } else if(pairsController.practicalKey == 'world-capital-4') {
                          AuthService().upgradeData('world-capital-5');
                        } else if(pairsController.practicalKey == 'world-capital-5') {
                          AuthService().upgradeData('world-capital-6');
                        } else if(pairsController.practicalKey == 'world-capital-6') {
                          AuthService().upgradeData('world-capital-7');
                        } else if(pairsController.practicalKey == 'world-capital-7') {
                          AuthService().upgradeData('world-capital-done');
                        }

                        else if(pairsController.practicalKey == 'world-dest-1') {
                          AuthService().upgradeData('world-dest-2');
                        } else if(pairsController.practicalKey == 'world-dest-2') {
                          AuthService().upgradeData('world-dest-3');
                        } else if(pairsController.practicalKey == 'world-dest-3') {
                          AuthService().upgradeData('world-dest-4');
                        } else if(pairsController.practicalKey == 'world-dest-4') {
                          AuthService().upgradeData('world-dest-5');
                        } else if(pairsController.practicalKey == 'world-dest-5') {
                          AuthService().upgradeData('world-dest-6');
                        } else if(pairsController.practicalKey == 'world-dest-6') {
                          AuthService().upgradeData('world-dest-done');
                        }

                        else if(pairsController.practicalKey == 'flags-1') {
                          AuthService().upgradeData('flags-2');
                        } else if(pairsController.practicalKey == 'flags-2') {
                          AuthService().upgradeData('flags-3');
                        } else if(pairsController.practicalKey == 'flags-3') {
                          AuthService().upgradeData('flags-4');
                        } else if(pairsController.practicalKey == 'flags-4') {
                          AuthService().upgradeData('flags-5');
                        } else if(pairsController.practicalKey == 'flags-5') {
                          AuthService().upgradeData('flags-6');
                        } else if(pairsController.practicalKey == 'flags-6') {
                          AuthService().upgradeData('flags-7');
                        } else if(pairsController.practicalKey == 'flags-7') {

                        }

                        else if(pairsController.practicalKey == 'table-number') {
                          AuthService().upgradeData('table-number-done');
                        } else if(pairsController.practicalKey == 'table-mass') {
                          AuthService().upgradeData('table-mass-done');
                        }

                        else if(pairsController.practicalKey == 'dates-inv-1') {
                          AuthService().upgradeData('dates-inv-2');
                        } else if(pairsController.practicalKey == 'dates-inv-2') {
                          AuthService().upgradeData('dates-inv-3');
                        } else if(pairsController.practicalKey == 'dates-inv-3') {
                          AuthService().upgradeData('dates-inv-4');
                        } else if(pairsController.practicalKey == 'dates-inv-4') {
                          AuthService().upgradeData('dates-inv-done');
                        }

                        else if(pairsController.practicalKey == 'dates-world-1') {
                          AuthService().upgradeData('dates-world-2');
                        } else if(pairsController.practicalKey == 'dates-world-2') {
                          AuthService().upgradeData('dates-world-3');
                        } else if(pairsController.practicalKey == 'dates-world-3') {
                          AuthService().upgradeData('dates-world-4');
                        } else if(pairsController.practicalKey == 'dates-world-4') {
                          AuthService().upgradeData('dates-world-done');
                        }

                        if(pairsController.practicalKey == 'practical4_4' && !GetStorage().read('lec5_1')) {
                          AuthService().upgradeData('lec5_1');
                          AuthService().upgradeData('word-number');
                          AuthService().upgradeData('number-chain');
                          AuthService().upgradeData('table');
                          Get.offAll(const HomePage(), arguments: '5',transition: Transition.leftToRight);
                        } else {
                          Get.back();
                        }
                      }
                    } else {
                      pairsController.rightAnswersPairs = [];
                      pairsController.lieAnswersPairs = [];
                      pairsController.timesUpPairs = [];
                      pairsController.globalArrayInterval++;
                      pairsController.isCorrection = false;
                      // если мы завершили последние 50 пар
                      if(pairsController.globalArrayInterval == pairsController.maxGlobalArrayInterval) {
                        pairsController.isLastSet = true;
                        pairsController.isLastSetGlobal = true;
                        Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                        // если мы завершили не последние 50 пар
                      } else {
                        pairsController.arrayInterval = 1;
                        pairsController.isLastSet = false;
                        Get.off(pairsController.nextPageStart!, transition: Transition.rightToLeft);
                      }
                    }
                  } else {
                    pairsController.rightAnswersPairs = [];
                    pairsController.lieAnswersPairs = [];
                    pairsController.timesUpPairs = [];
                    if(pairsController.isRepeatPractical) {
                      if(pairsController.repeatInterval == 6) {
                        pairsController.arrayInterval++;

                        if(pairsController.arrayInterval == pairsController.maxArrayInterval) {
                          pairsController.isLastSet = true;
                          pairsController.repeatInterval = 3;
                          Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                        } else {
                          pairsController.repeatInterval = 1;
                          Get.off(pairsController.nextPageStart!, transition: Transition.rightToLeft);
                        }
                      } else {
                        pairsController.repeatInterval++;
                        Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                      }
                    } else {
                      pairsController.arrayInterval++;
                      if(pairsController.arrayInterval == pairsController.maxArrayInterval) {
                        pairsController.isLastSet = true;
                        Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                      } else {
                        Get.off(pairsController.nextPageStart!, transition: Transition.rightToLeft);
                      }
                    }
                  }
                } else {
                  if(pairsController.isLastSet && pairsController.maxArrayInterval != 1 || pairsController.isLongPairsChain) pairsController.isCorrection = true;
                  Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                }
              }
          ),
        ],
      ),
    );
  }

}


