import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/data.dart';
import 'package:practical_mnemonic/controllers/expansion_tile_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/main.dart';
import 'package:practical_mnemonic/practical_pages/practical_struct_selection.dart';
import 'package:practical_mnemonic/widgets/build_stacked_element.dart';
import 'package:practical_mnemonic/widgets/circular_number.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_element_result.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_chain.dart';
import 'package:practical_mnemonic/widgets/dashed_line_painter.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';


class PracticalLociiResult extends StatelessWidget {
  const PracticalLociiResult({Key? key}) : super(key: key);

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
    final pairsController = Get.find<PairsController>();
    String? path;
    String? titleResult;
    Color? titleColor;
    int rightCount = 0;
    int totalCount = pairsController.chainElements.length;

    for(int i = 0; i < totalCount; i++) {
      var elem = pairsController.chainElements[i];
      if(elem.isCorrect) rightCount++;
    }

    bool isPerfect = rightCount == totalCount;

    if(isPerfect) {
      path = 'assets/perfect.svg';
      titleResult = 'perfect'.tr;
      titleColor = kblue;
    }
    else if(rightCount / totalCount >= 0.33) {
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
            '$rightCount/$totalCount',
            style: const TextStyle(color: Colors.black, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          sizedBoxHigh(),
          pairsController.isLastSet
            ? _buildExpansions()
            : pairsController.mainChain.isNotEmpty && pairsController.arrayInterval == 1
                ? ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: pairsController.chainElements.length,
                    itemBuilder: (_, j) => Column(
                      children: [
                        pairsController.chainElements.first == pairsController.chainElements[j] ? Column(
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
                          _buildIconChain(pairsController.chainElements[j])
                          ],
                        ) : Container(),
                        pairsController.chainElements[j] == pairsController.chainElements.first ? Container() :
                          pairsController.mainChain.isEmpty ? _buildIcon(pairsController.chainElements[j]) : _buildIconChain(pairsController.chainElements[j]),
                        buildStackedElement(pairsController.chainElements[j], pairsController.chainElements[j] == pairsController.chainElements.last),
                      ],
                    )

                )
              : _buildExpansion(),
          sizedBoxHigh(),
          !isPerfect && !pairsController.isCheckExercise && !pairsController.isNotCheck ? Column(
            children: [
              Text(
                'before_go_fix_errors'.tr,
                style: Get.textTheme.headline2!.copyWith(color: kred, fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),
          isPerfect && pairsController.mainChain.isNotEmpty && pairsController.arrayInterval == 1 ? Column(
            children: [
              Text(
                'trunk_done'.tr,
                style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              sizedBoxHigh()
            ],
          ) : Container(),
          isPerfect && !pairsController.isLastSet && pairsController.mainChain.isEmpty ? Column(
            children: [
              Text(
                'you_memorized_nd_chain'.trParams({'count': pairsController.arrayInterval.toString()}),
                style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              sizedBoxHigh()
            ],
          ) : Container(),
          isPerfect && pairsController.isLastSet ? Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: Get.textTheme.bodyText1!.copyWith(color: kblue, fontSize: 20),
                    children:  [
                      TextSpan(text: 'congratulations_you_memorized'.tr),
                      TextSpan(text: '${pairsController.chain.length + pairsController.mainChain.length}', style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'information_units'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const TextSpan(text: '!'),
                    ]
                ),
              ),
              sizedBoxHigh()
            ],
          ) : Container(),
          (isPerfect || pairsController.isNotCheck) && pairsController.arrayInterval == pairsController.maxArrayInterval - 1 && pairsController.mainChain.isNotEmpty ? Column(
            children: [
              Text(
                'remain_go_all_n_chain_main'.trParams({'count': pairsController.mainChain.length.toString()}),
                style: Get.textTheme.bodyText1, textAlign: TextAlign.center,
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),
          (isPerfect || pairsController.isNotCheck) && pairsController.arrayInterval == pairsController.maxArrayInterval - 1 && pairsController.mainChain.isEmpty
              ? Column(
            children: [
              Text(
                'remain_go_all_n_chain_locii'.trParams({'count': pairsController.chain.length.toString()}),
                style: Get.textTheme.bodyText1, textAlign: TextAlign.center,
              ),
              sizedBoxHigh(),
            ],
          ) : Container(),
          CustomButton(
              title: pairsController.isCheckExercise ? 'finish'.tr :
                isPerfect || pairsController.isNotCheck ? pairsController.isLastSet ? 'finish'.tr : 'continue'.tr : 'try_again'.tr,
              color: isPerfect || pairsController.isCheckExercise ? kblue : kred,
              handler: () {
                pairsController.chainElements = [];

                if(pairsController.isCheckExercise) {
                  Get.back();
                } else if(isPerfect || pairsController.isNotCheck) {
                  if(pairsController.enableStatistics && !pairsController.isNotCheck) {
                    if(pairsController.enableStatistics && !pairsController.isNotCheck) AuthService().upgradeStatistics(isChain: true);
                  } else if(pairsController.practicalKey == 'practical5_1' && !GetStorage().read('practical5_2')) {
                    if(pairsController.enableStatistics && !pairsController.isNotCheck) AuthService().upgradeStatistics(isChain: true);
                  }

                  if(pairsController.isLastSet) {
                    if(pairsController.practicalKey == 'practical2_3') {
                      AuthService().upgradeData('practical2_4');
                    } else if(pairsController.practicalKey == 'practical4_1') {
                      AuthService().upgradeData('lec4_2');
                    } else if(pairsController.practicalKey == 'practical5_1') {
                      AuthService().upgradeData('practical5_2');
                    }

                    else if(pairsController.practicalKey == 'pi-1') {
                      AuthService().upgradeData('pi-2');
                    }  else if(pairsController.practicalKey == 'pi-2') {
                      AuthService().upgradeData('pi-3');
                    }  else if(pairsController.practicalKey == 'pi-3') {
                      AuthService().upgradeData('pi-4');
                    }  else if(pairsController.practicalKey == 'pi-4') {
                      AuthService().upgradeData('pi-5');
                    }  else if(pairsController.practicalKey == 'pi-5') {
                      AuthService().upgradeData('pi-6');
                    }  else if(pairsController.practicalKey == 'pi-6') {
                      AuthService().upgradeData('pi-7');
                    }  else if(pairsController.practicalKey == 'pi-7') {
                      AuthService().upgradeData('pi-8');
                    }  else if(pairsController.practicalKey == 'pi-8') {
                      AuthService().upgradeData('pi-9');
                    }  else if(pairsController.practicalKey == 'pi-9') {
                      AuthService().upgradeData('pi-10');
                    }  else if(pairsController.practicalKey == 'pi-10') {
                      AuthService().upgradeData('pi-11');
                    }  else if(pairsController.practicalKey == 'pi-11') {
                      AuthService().upgradeData('pi-done');
                    }

                    if(pairsController.practicalKey == 'practical2_3' && !GetStorage().read('lec3_1')) {
                      AuthService().upgradeData('lec3_1');
                      AuthService().upgradeData('word-chain');
                      Get.offAll(const HomePage(), arguments: '3',transition: Transition.leftToRight);
                    } else {
                      Get.back();
                    }

                  } else if(pairsController.arrayInterval == pairsController.maxArrayInterval - 1) {
                    pairsController.isLastSet = true;
                    pairsController.isFormCheckBoxExist = false;
                    pairsController.isFormCheck = false;
                    pairsController.arrayInterval++;
                    Get.off(pairsController.nextPageCheck, transition: Transition.rightToLeft);
                  }
                  else {
                    if(pairsController.mainChain.isNotEmpty && pairsController.arrayInterval == 1) {
                      pairsController.lieValues = [];
                      pairsController.lieValues.addAll(pairsController.chain);
                    }
                    pairsController.arrayInterval++;

                    if(pairsController.mainChain.isNotEmpty) {
                      Get.off(const PracticalStructSelection(), transition: Transition.rightToLeft);
                    } else {
                      Get.off(pairsController.nextPageStart, transition: Transition.rightToLeft);
                    }
                  }
                } else {
                  if(pairsController.isLastSet && pairsController.enableCorrection) pairsController.isCorrection = true;
                  Get.off(pairsController.nextPageCheck, transition: Transition.rightToLeft);
                }
              }
          ),
        ],
      ),
    );
  }

  _buildIconChain(ChainElement element) => Stack(
    clipBehavior: Clip.none,
    children: [
      Container(height: 80, color: Colors.black, width: 1,),

      Positioned(
        child: Row(
          children: [
            SvgPicture.asset(
              element.nextElement == element.answeredFalseNextElement ? 'assets/okey.svg' :
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

  _buildStackedElementHorizontal(ChainElement element) => Stack(
    clipBehavior: Clip.none,
    children: [
      CustomElementResult(
        color: element.isCorrect ? kblue : element.isTimesUp ? kgreyLinearPB : kred,
        title: element.nextElement,
        isCorrect: element.isCorrect,
        isTimesUp: element.isTimesUp,
        subtitle:  element.answeredFalseNextElement,
        isRememberView: element.isRememberView,
        isHorizontal: true,
      ),
      Positioned(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          width: 20,
          height: 20,
        ),
        top: 0,
        left: -10,
        bottom: 0,
      ),
    ],
  );

  _buildExpansion() {
    final pairsController = Get.find<PairsController>();
    List<ChainElement> chain = pairsController.chainElements;

    return Column(
      children: [
        Center(
          child: Text(
            pairsController.mainChain.isEmpty
              ? chain[0].element
              : pairsController.mainChain[pairsController.arrayInterval - 2],
            style: Get.textTheme.headline2!.copyWith(fontSize: 32),
          ),
        ),
        sizedBoxHigh(),
        _buildLociiTitles(),
        sizedBoxHigh(),
        ListView.builder(
          itemCount: chain.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, j) => _buildLociiElement(chain[j], j)
        )
      ],
    );
  }

  _buildLociiTitles() =>  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'subobjects'.tr,
          style: Get.textTheme.headline2!.copyWith(fontWeight: FontWeight.normal),
        ),
        Text(
          'views'.tr,
          style: Get.textTheme.headline2!.copyWith(fontWeight: FontWeight.normal),
        ),
      ],
    ),
  );

  _buildIcon(ChainElement element) => Stack(
    clipBehavior: Clip.none,
    children: [
      Container(
        height: 1,
        color: Colors.black,
      ),
      Positioned(
        child: Column(
          children: [
            SvgPicture.asset(
              element.isCorrect ? 'assets/okey.svg' :
              element.isTimesUp ? 'assets/sand-times-up.svg' : 'assets/error.svg',
              height: 30,
            ),
            const SizedBox(height: 8),
            SizedBox(
                height: 30,
                child: CustomPaint(
                    foregroundPainter: DashedLinePainter(isVertical: true)
                )
            ),
          ],
        ),
        bottom: 0,
        left: -10,
        right: 0,
      ),
    ],
  );

  Widget _buildLociiElement(ChainElement element, int j) => Padding(
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        Row(
          children: [
            CircularNumber(indexColumn: j),
            Expanded(
                child: _buildIcon(element)
            ),
            SizedBox(
              width: 200,
              child: _buildStackedElementHorizontal(element),
            ),
          ],
        ),
      ],
    ),
  );

  Widget _buildExpansions() {
    final pairsController = Get.find<PairsController>();
    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());

    int length = 0;
    if(pairsController.isCorrection) {
      for (var element in pairsController.chainsToFix) { if(!element.isFixed) length++; }
    } else if(pairsController.mainChain.isNotEmpty) {
      length = pairsController.mainChain.length;
    } else if(pairsController.maxArrayInterval == 1 && pairsController.chains.isNotEmpty) {
      length = pairsController.chains.length;
    } else {
      length = pairsController.maxArrayInterval - 1;
    }

    for(int i = 0; i < length; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    List<List<ChainElement>> chains = List.generate(length, (_) => []);

    if(pairsController.mainChain.isNotEmpty) {
      for(int i = 0, k = 0; i < pairsController.mainChain.length; i++, k+= 6) {
        for(int j = 0; j < pairsController.mainChain.length; j++) {
          chains[i].add(pairsController.chainElements[j + k]);
        }
      }
    } else {
      if(pairsController.chainsToFix.isEmpty) { // todo ?????????????????????????
        for(int i = 0, k = 0; i < pairsController.chains.length; i++) {
          for(int j = 0; j < pairsController.chains[i].length; j++) {
            chains[i].add(pairsController.chainElements[j + k]);
          }
          k+= pairsController.chains[i].length;
        }
      } else {
        for(int i = 0, k = 0, m = 0; i < pairsController.chains.length; i++) {
          if(!pairsController.chainsToFix[i].isFixed) {
            for(int j = 0; j < pairsController.chainsToFix[i].chain.length; j++) {
              chains[m].add(pairsController.chainElements[j + k]);
            }
            k+= pairsController.chainsToFix[i].chain.length;
            m++;
          }
        }
      }
    }




    return Column(
      children: [
        pairsController.mainChain.isEmpty ? Container() : Stack(
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
                  'reference_view'.tr,
                  style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
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
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: chains.length,
          itemBuilder: (_, index) {

          int countOfErrors = 0;

          for(int j = pairsController.mainChain.isEmpty ? 0 : 1; j < chains[index].length; j++) {
            if(!chains[index][j].isCorrect) countOfErrors++;
          }

          bool isPerfect = chains[index].every((element) => element.isCorrect);

          if(isPerfect) {
            if(pairsController.chains.isEmpty) {
              for(int i = 0; i < pairsController.chainsToFix.length; i++) {

                if(pairsController.chainsToFix[i].chain[1] == chains[index][1].element) {
                  pairsController.chainsToFix[i].isFixed = true;
                }
              }
            } else {
              for(int i = 0; i < pairsController.chainsToFix.length; i++) {

                if(pairsController.chainsToFix[i].chain[0] == chains[index][1].element) {
                  pairsController.chainsToFix[i].isFixed = true;
                }
              }
            }
          }

            return Column(
              children: [
                pairsController.mainChain.isEmpty ? sizedBoxHigh() : Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(height: 80, color: Colors.black, width: 1,),
                    Positioned(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            chains[index].first.answeredFalseNextElement == pairsController.mainChain[index] ? 'assets/okey.svg' :
                            chains[index].first.isTimesUp ? 'assets/sand-times-up.svg' : 'assets/error.svg',
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
                ),
                pairsController.isPiExercise && index % 3 == 0 ? Center(child: Text(PiNumber.titles[index~/3], style: Get.textTheme.headline2,),) : Container(),
                pairsController.isPiExercise && index % 3 == 0 ? sizedBoxHigh() : Container(),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CustomExpansionChain(
                      widgets: [
                        _buildLociiTitles(),
                        sizedBoxHigh(),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: chains[index].length,
                          itemBuilder: (_, j) => pairsController.mainChain.isEmpty
                            ? _buildLociiElement(chains[index][j], j)
                            : chains[index][j] == chains[index].first
                              ? Container()
                              : _buildLociiElement(chains[index][j], j - 1)

                        )
                      ],
                      expansionTileIndex: index,
                      title: chains[index].first.element,
                      subtitle: isPerfect ? 'perfect_small'.tr : 'there_are_errors'.trParams({'count': countOfErrors.toString()}),
                      subtitleColor: isPerfect ? kblue : kred,
                    ),
                    pairsController.mainChain.isEmpty ? Container() : Positioned(
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
                    index == pairsController.mainChain.length - 1 || pairsController.mainChain.isEmpty ? Container() : Positioned(
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
              ],
            );
          }
        ),
      ],
    );
  }

}










