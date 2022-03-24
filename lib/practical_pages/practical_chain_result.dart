import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/expansion_tile_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/widgets/build_stacked_element.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_arc.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_element_result.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_chain.dart';
import 'package:practical_mnemonic/widgets/dashed_line_painter.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';




class PracticalChainResult extends StatelessWidget {
  const PracticalChainResult({Key? key}) : super(key: key);


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
    final PairsController pairsController = Get.find();
    String? path;
    String? titleResult;
    Color? titleColor;
    int rightCount = 0;
    int count = pairsController.chainElements.length;

    for(int i = 0; i < count; i++) {
      var elem = pairsController.chainElements[i];
      if(elem.isCorrect) rightCount++;
    }

    bool isPerfect = rightCount == count;

    if(isPerfect) {
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
         if(pairsController.isTelPractical) _buildExpansionTel()
         else if (pairsController.arrayInterval < pairsController.maxArrayInterval || pairsController.isSingleChain)
           ListView.builder(
             shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
             itemCount: pairsController.chainElements.length,
             itemBuilder: (_, j) => Column(
               children: [
                 pairsController.chainElements[j] == pairsController.chainElements.first ? Column(
                   children: [
                     Stack(
                       clipBehavior: Clip.none,
                       children: [
                         Container(
                           margin: const EdgeInsets.symmetric(horizontal: 70),
                           decoration: BoxDecoration(
                             color: Colors.black,
                             borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Colors.black, width: 2),
                           ),
                           padding: const EdgeInsets.all(16),
                           child: Center(
                             child: Text(
                               pairsController.chainElements[j].element,
                               style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                               textAlign: TextAlign.center,
                             ),
                           ),
                         ),
                         pairsController.chainElements[j] == pairsController.chainElements.first ? Container() : Positioned(
                           child: Container(
                             decoration: const BoxDecoration(
                               color: Colors.black,
                               shape: BoxShape.circle,
                             ),
                             width: 20,
                             height: 20,
                           ),
                           top: -10,
                           left: 0,
                           right: 0,
                         ),
                         pairsController.chainElements[j] == pairsController.chainElements.last ? Container() : Positioned(
                           child: Container(
                             decoration: const BoxDecoration(
                               color: Colors.black,
                               shape: BoxShape.circle,
                             ),
                             width: 20,
                             height: 20,
                           ),
                           bottom: -10,
                           left: 0,
                           right: 0,
                         ),
                       ],
                     ),
                     _buildIcon(pairsController.chainElements[j]),
                   ],
                 ) : Container(),
                 pairsController.chainElements[j] == pairsController.chainElements.first ? Container() : _buildIcon(pairsController.chainElements[j]),
                 buildStackedElement(pairsController.chainElements[j], pairsController.chainElements[j] == pairsController.chainElements.last),
               ],
             )

          )
          else  _buildExpansions(),
          !pairsController.isLastSet ? sizedBoxHigh() : Container(),
          !isPerfect && !pairsController.isCheckExercise && !pairsController.isNotCheck ? Column(
            children: [
              Text(
                'before_go_fix_errors'.tr,
                style: const TextStyle(color: kred, fontWeight: FontWeight.normal, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),
          isPerfect && !pairsController.isLastSet && pairsController.repeatInterval == 1
            ? pairsController.isSingleChain
              ? Column(
                  children: [
                    Text(
                      'you_memorized_chain'.tr,
                      style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    sizedBoxHigh(),
                  ],
                )
              : Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
                          children: [
                            TextSpan(text: 'you_memorized'.tr),
                            TextSpan(
                              text: pairsController.isTelPractical
                                ? '${pairsController.countOfOnePass * pairsController.arrayInterval} ${pairsController.isPasswordPractical ? 'passwords'.tr : 'numbers'.tr}'
                                : '${pairsController.arrayInterval}',
                              style: const TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'chain'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                          ]
                      ),
                    ),
                    sizedBoxHigh()
                  ],
                )
            : Container(),
          isPerfect && pairsController.isRepeatPractical && pairsController.repeatInterval == 1 ? Column(
            children: [
              Text(
                '2_repeats'.tr,
                style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),
          isPerfect && pairsController.repeatInterval == 3
              && pairsController.arrayInterval != pairsController.maxArrayInterval - 1
              && !pairsController.isLastSet ? Column(
                children: [
                  Text(
                    'next_seq'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  sizedBoxHigh(),
                ],
              ) : Container(),
          isPerfect && pairsController.isLastSet ? Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
                    children: [
                      TextSpan(text: 'you_memorized'.tr),
                      TextSpan(text: 'whole_chain'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'from_n_elements_chain'.trParams({'count': pairsController.chain.length.toString()})),
                    ]
                ),
              ),
              sizedBoxHigh()
            ],
          ) : Container(),
          (isPerfect || pairsController.isNotCheck) && pairsController.arrayInterval == pairsController.maxArrayInterval - 1 && !pairsController.isRepeatPractical
          ? pairsController.isTelPractical
              ? Container()
              : Column(
                  children: [
                    Text(
                      'remain_go_all_n_chain_chain'.trParams({'count': pairsController.chain.length.toString()}),
                      style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                    ),
                    sizedBoxHigh(),
                  ],
          ) : Container(),
          (isPerfect || pairsController.isNotCheck) && pairsController.arrayInterval == pairsController.maxArrayInterval - 1 && pairsController.isRepeatPractical && pairsController.repeatInterval == 3
            ? Column(
            children: [
              Text(
                'remain_go_all_n_chain_chain'.trParams({'count': pairsController.chain.length.toString()}),
                style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.center,
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),
          CustomButton(
              title: pairsController.isCheckExercise ? 'finish'.tr :
                isPerfect || pairsController.isNotCheck
                ? pairsController.isLastSet && (pairsController.repeatInterval == 1 || pairsController.repeatInterval == 3)
                  || pairsController.isSingleChain
                  || pairsController.arrayInterval == pairsController.maxArrayInterval - 1 && pairsController.isTelPractical
                  ? 'finish'.tr
                  : 'continue'.tr
                : 'try_again'.tr,
              color: isPerfect || pairsController.isCheckExercise ? kblue : kred,
              handler: () {
                pairsController.chainElements = [];
                if(pairsController.isCheckExercise) {
                  Get.back();
                }
                else if(isPerfect || pairsController.isNotCheck) {
                  // после завершения 50 100 150
                  if(pairsController.isSingleChain) {
                    if(pairsController.enableStatistics && !pairsController.isNotCheck) AuthService().upgradeStatistics(isChain: true);

                    if(pairsController.practicalKey == 'practical3_2') {
                      AuthService().upgradeData('practical3_3');
                    } else if(pairsController.practicalKey == 'subjects-1') {
                      AuthService().upgradeData('subjects-2');
                    } else if(pairsController.practicalKey == 'subjects-2') {
                      AuthService().upgradeData('subjects-3');
                    } else if(pairsController.practicalKey == 'subjects-3') {
                      AuthService().upgradeData('subjects-4');
                    } else if(pairsController.practicalKey == 'subjects-4') {
                      AuthService().upgradeData('subjects-5');
                    } else if(pairsController.practicalKey == 'subjects-5') {
                      AuthService().upgradeData('subjects-6');
                    } else if(pairsController.practicalKey == 'subjects-6') {
                      AuthService().upgradeData('subjects-7');
                    } else if(pairsController.practicalKey == 'subjects-7') {
                      AuthService().upgradeData('subjects-8');
                    } else if(pairsController.practicalKey == 'subjects-8') {
                      AuthService().upgradeData('subjects-9');
                    }  else if(pairsController.practicalKey == 'subjects-9') {
                      AuthService().upgradeData('subjects-10');
                    }

                    else if(pairsController.practicalKey == 'world-1') {
                      AuthService().upgradeData('world-2');
                    } else if(pairsController.practicalKey == 'world-5') {
                      AuthService().upgradeData('world-6');
                    }
                    Get.back();
                  } else if(pairsController.isLastSet) {
                    if(pairsController.enableStatistics && !pairsController.isNotCheck) AuthService().upgradeStatistics(isChain: true);

                    if(pairsController.practicalKey == 'practical2_1') {
                      AuthService().upgradeData('lec2_2');
                    } else if(pairsController.practicalKey == 'practical2_2') {
                      AuthService().upgradeData('practical2_3');
                    } else if(pairsController.practicalKey == 'practical2_4') {
                      AuthService().upgradeData('practical2_5');
                    } else if(pairsController.practicalKey == 'practical2_5') {

                    } else if(pairsController.practicalKey == 'practical3_4') {
                      AuthService().upgradeData('practical3_5');
                    } else if(pairsController.practicalKey == 'states') {
                      AuthService().upgradeData('states-number');
                      AuthService().upgradeData('states-dest');
                    }  else if(pairsController.practicalKey == 'subjects-10') {
                      AuthService().upgradeData('subjects-number');
                    }  else if(pairsController.practicalKey == 'subjects-10') {
                      AuthService().upgradeData('subjects-number');
                    }

                      else if(pairsController.practicalKey == 'world-2') {
                      AuthService().upgradeData('world-3');
                    } else if(pairsController.practicalKey == 'world-3') {
                      AuthService().upgradeData('world-4');
                    } else if(pairsController.practicalKey == 'world-4') {
                      AuthService().upgradeData('world-5');
                    } else if(pairsController.practicalKey == 'world-6') {
                      AuthService().upgradeData('world-7');
                    } else if(pairsController.practicalKey == 'world-7') {
                      AuthService().upgradeData('world-dest');
                      AuthService().upgradeData('world-capital');
                    }

                    else if(pairsController.practicalKey == 'table') {
                      AuthService().upgradeData('table-number');
                      AuthService().upgradeData('table-mass');
                    }

                    Get.back();


                  } else {
                    if(pairsController.isRepeatPractical) {
                      if(pairsController.repeatInterval == 3) {
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
                        if(pairsController.isTelPractical) {
                          if(pairsController.enableStatistics && !pairsController.isNotCheck) AuthService().upgradeStatistics(isChain: true);

                          if(pairsController.practicalKey == 'practical5_2') {
                            AuthService().upgradeData('practical5_3');
                          }
                          Get.back();
                        } else {
                          pairsController.isLastSet = true;
                          Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                        }
                      } else {
                        Get.off(pairsController.nextPageStart!, transition: Transition.rightToLeft);
                      }
                    }
                  }
                } else {
                  if(pairsController.isLastSet  && pairsController.enableCorrection) pairsController.isCorrection = true;
                  Get.off(pairsController.nextPageCheck!, transition: Transition.rightToLeft);
                }
              }
          ),
        ],
      ),
    );
  }


  _buildExpansionTel() {
    final PairsController pairsController = Get.find<PairsController>();
    List<ChainElement> chain = pairsController.chainElements;

    return Column(
      children: [
        sizedBoxHigh(),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: chain.length,
          itemBuilder: (_, j) => Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          CustomElementResult(
                            color: chain[j].isCorrect ? kblue : chain[j].isTimesUp ? kgreyLinearPB : kred,
                            title: chain[j].nextElement,
                            isCorrect: chain[j].isCorrect,
                            isTimesUp: chain[j].isTimesUp,
                            subtitle:  chain[j].answeredFalseNextElement,
                            isRememberView: chain[j].isRememberView,
                            isHorizontal: true,
                          ),
                        ],
                      ),
                    ),
                    // _buildNumber(indexColumn),
                    const Positioned(
                      child: CustomArc(diameter: 70),
                      top: -33,
                    ),
                    Positioned(
                      top: -28,
                      child: Text(
                        '${j + 1 + pairsController.countOfOnePass * (pairsController.arrayInterval - 1)}',
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Positioned(
                      top: -62,
                      child: SvgPicture.asset(
                        chain[j].isCorrect ? 'assets/okey.svg' :
                        chain[j].isTimesUp ? 'assets/sand-times-up.svg' : 'assets/error.svg',
                        height: 25,
                      ),
                    )
                  ],
                ),
                j == pairsController.chainElements.length - 1
                  ? Container()
                  : Column(
                  children: [
                    sizedBoxHigh(),
                    sizedBoxHigh(),
                  ],
                )
              ],
            ),
          )
        )
      ],
    );
  }

  Widget _buildExpansions() {
    final pairsController = Get.find<PairsController>();
    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());

    int length = 0;
    if(pairsController.isCorrection) {
      for (var element in pairsController.chainsToFix) { if(!element.isFixed) length++; }
    } else if(pairsController.maxArrayInterval == 1 && pairsController.chains.isNotEmpty) {
      length = pairsController.chains.length;
    }
    else {
      length = pairsController.maxArrayInterval - 1;
    }


    for(int i = 0; i < length; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    List<List<ChainElement>> chains = List.generate(length, (_) => []);


    for(int i = 0, k = 0, m = 0; i < pairsController.chains.length; i++) {
      if(!pairsController.chainsToFix[i].isFixed) {
        for(int j = 0; j < pairsController.chainsToFix[i].chain.length; j++) {
          chains[m].add(pairsController.chainElements[j + k]);
        }
        k+= pairsController.chainsToFix[i].chain.length;
        m++;
      }
    }



    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: chains.length,
        itemBuilder: (_, index) {

          int countOfErrors = 0;
          for(int j = 0; j < chains[index].length; j++) {
            if(!chains[index][j].isCorrect) countOfErrors++;
          }
          bool isPerfect = chains[index].every((element) => element.isCorrect);

          if(isPerfect && pairsController.enableCorrection) {
            for(int i = 0; i < pairsController.chainsToFix.length; i++) {
              if(pairsController.chainsToFix[i].chain[0] == chains[index][1].element) {
                pairsController.chainsToFix[i].isFixed = true;
              }
            }
          }

        return Column(
          children: [
            CustomExpansionChain(
              widgets: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: chains[index].length,
                  itemBuilder: (_, j) => Column(
                  children: [
                      chains[index][j] == chains[index].first ? Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 70),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black, width: 2),
                              ),
                              padding: const EdgeInsets.all(16),
                              child: Center(
                                child: Text(
                                  chains[index][j].element,
                                  style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            chains[index][j] == chains[index].first ? Container() : Positioned(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                width: 20,
                                height: 20,
                              ),
                              top: -10,
                              left: 0,
                              right: 0,
                            ),
                            chains[index][j] == chains[index].last ? Container() : Positioned(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                width: 20,
                                height: 20,
                              ),
                              bottom: -10,
                              left: 0,
                              right: 0,
                            ),
                          ],
                        ),
                        _buildIcon(chains[index][j])
                      ],
                    ) : Container(),
                    chains[index][j] == chains[index].first ? Container() : _buildIcon(chains[index][j]),
                    buildStackedElement(chains[index][j], chains[index][j] == chains[index].last),
                  ],
                )
                )
              ],
              expansionTileIndex: index,
              title: chains[index].first.element,
              subtitle: isPerfect ? 'perfect_small'.tr : 'there_are_errors'.trParams({'count': countOfErrors.toString()}),
              subtitleColor: isPerfect ? kblue : kred,
            ),
            sizedBoxHigh()
          ],
        );
      }
    );
  }

  _buildIcon(ChainElement element) => Stack(
    clipBehavior: Clip.none,
    children: [
      Container(height: 80, color: Colors.black, width: 1,),
      Positioned(
        child: Row(
          children: [
            SvgPicture.asset(
              element.isCorrect ? 'assets/okey.svg' :
              element.isTimesUp ? 'assets/sand-times-up.svg' : 'assets/error.svg',
              height: 40,
            ),
            const SizedBox(width: 8),
            SizedBox(
                width: 110,
                child: CustomPaint(
                    foregroundPainter: DashedLinePainter()
                )
            ),
          ],
        ),
        right: 0,
      ),
    ],
    alignment: Alignment.center,
  );
}

