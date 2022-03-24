import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/codes.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/check_box_controller.dart';
import 'package:practical_mnemonic/controllers/page_index_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/controllers/timer_controller.dart';
import 'package:practical_mnemonic/utils/create_lie_values.dart';
import 'package:practical_mnemonic/utils/create_lie_values_from_list.dart';
import 'package:practical_mnemonic/utils/make_random_numbers.dart';
import 'package:practical_mnemonic/utils/shuffle.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_check_form.dart';
import 'package:practical_mnemonic/widgets/custom_circular_pb.dart';
import 'package:practical_mnemonic/widgets/custom_option.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';






class PracticalPairsCheck extends StatelessWidget {
  const PracticalPairsCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.find();
    final PageController pageController = PageController();
    if(pairsController.isFormCheckBoxExist) Get.put(CheckBoxController());

    final wordsMap = {
      'en': {
        'subobject': 'subobject',
        'loci': 'loci',
        'locia': 'loci',
        'reference': 'reference view',
        'chain_element': 'element of chain',
      },
      'ru': {
        'subobject': 'подобъект',
        'loci': 'лоции',
        'locia': 'лоция',
        'reference': 'опорный образ',
        'chain_element': 'элемент цепочки',
      }
    };

    if(pairsController.isRepeatPractical) {
      if(pairsController.repeatInterval == 1 || pairsController.repeatInterval == 4) {
        pairsController.maxSecondsCheck = pairsController.isFormCheck ? 20 : 15;
      } else if(pairsController.repeatInterval == 2 || pairsController.repeatInterval == 5) {
        pairsController.maxSecondsCheck = 10;
      } else if(pairsController.repeatInterval == 3 || pairsController.repeatInterval == 6) {
        pairsController.maxSecondsCheck = 5;
      }
    }

    final TimerController timerController = Get.put(TimerController(pairsController.maxSecondsCheck));

    if(pairsController.isBigPicturePractical) {
      Get.put(PageControllerIndex());
    }

    final textEditingController = TextEditingController();
    final focusNode = FocusNode();
    if(pairsController.isFormCheckBoxExist) Get.put(CheckBoxController());


    List<dynamic> pairs = [];
    List<String> chain = [];
    List<List<String>> chains = [];
    String subChainsText = '';
    List<String> displayedChain = [];

    // correction
    if(pairsController.isCorrection) {
      // цепочки
      if(pairsController.isChainPractical) {
        for(int i = 0, j = 0; i < pairsController.chainsToFix.length; j+= pairsController.chainsToFix[i].chain.length, i++) {
          if(!pairsController.chainsToFix[i].isFixed) {
            chain.addAll(pairsController.chain.getRange(j, j + pairsController.chainsToFix[i].chain.length).toList());

            if(pairsController.isLociiPractical) {
              for(int j = 0; j < pairsController.countOfOnePass; j++) {
                displayedChain.add('${j+1} ${wordsMap['data'.tr]!['subobject']} ${i+1} ${wordsMap['data'.tr]!['loci']}');
              }
            }
          }
        }

        int length = 0;

        for (var element in pairsController.chainsToFix) {
          if(!element.isFixed) length++;
        }

        chains = List.generate(length, (index) => []);

        for(int i = 0, k = 0; i < pairsController.chainsToFix.length; i++) {
          if(!pairsController.chainsToFix[i].isFixed) {
            pairsController.isCustomReferenceList
                ?  chains[k].add(pairsController.referencesList[i])
                : pairsController.isLociiPractical ? chains[k].add('${i+1} ${wordsMap['data'.tr]!['locia']}') : chains[k].add('${i+1} ${wordsMap['data'.tr]!['reference']}');
            for(int j = 0; j < pairsController.chainsToFix[i].chain.length; j++) {
              chains[k].add(pairsController.chainsToFix[i].chain[j]);
            }
            k++;
          }
        }

        // пары
      } else {
        final List<List<String>> lieAnswersList = [];
        final List<List<String>> timesUpList = [];

        if(pairsController.isRepeatPractical) {
          if(pairsController.repeatInterval == 3) {
            for (Pair pair in pairsController.lieAnswersPairs) {
              lieAnswersList.add([pair.firstValue, pair.secondCorrect]);
            }
            for (Pair pair in pairsController.timesUpPairs) {
              timesUpList.add([pair.firstValue, pair.secondCorrect]);
            }
          } else if(pairsController.repeatInterval == 6) {
            for (Pair pair in pairsController.lieAnswersPairs) {
              lieAnswersList.add([pair.secondCorrect, pair.firstValue]);
            }
            for (Pair pair in pairsController.timesUpPairs) {
              timesUpList.add([pair.secondCorrect, pair.firstValue]);
            }
          }
        } else {
          for (Pair pair in pairsController.lieAnswersPairs) {
            pairsController.isNamePractical || pairsController.isFlagsPractical || pairsController.pairsContainsNumbers
                ?  lieAnswersList.add([pair.secondCorrect, pair.firstValue, pair.isMale ? 'male' : 'female'])
                : lieAnswersList.add([pair.firstValue, pair.secondCorrect]);
          }

          for (Pair pair in pairsController.timesUpPairs) {
            pairsController.isNamePractical || pairsController.isFlagsPractical || pairsController.pairsContainsNumbers
                ?  timesUpList.add([pair.secondCorrect, pair.firstValue, pair.isMale ? 'male' : 'female'])
                : timesUpList.add([pair.firstValue, pair.secondCorrect]);
          }
        }

        pairs = shuffle(List.from(lieAnswersList)..addAll(timesUpList));

        if(pairsController.isToggleNumbers) {
          for(int i = 0; i < pairs.length; i++) {
            RegExp _numeric = RegExp(r'[0123456789]');
            if(_numeric.hasMatch(pairs[i][1])) {
              var temp = pairs[i][0];
              pairs[i][0] = pairs[i][1];
              pairs[i][1] = temp;
            }
          }
        }

      }

    } else {
      int globalPairsCount = 0;
      if (pairsController.maxGlobalArrayInterval == 1) {
        globalPairsCount =  pairsController.isChainPractical ? pairsController.chain.length : pairsController.pairs.length;
      } else {
        globalPairsCount = pairsController.isChainPractical
          ? pairsController.chain.length ~/ (pairsController.maxGlobalArrayInterval - 1)
          : pairsController.pairs.length ~/ (pairsController.maxGlobalArrayInterval - 1);
      }


      if(pairsController.mainChain.isNotEmpty) {
       if(pairsController.arrayInterval > 1 && pairsController.arrayInterval < pairsController.maxArrayInterval) {
          chain.add(pairsController.mainChain[pairsController.arrayInterval - 2]);
          displayedChain = List.generate(pairsController.countOfOnePass, (i) => '${i + 1} ${wordsMap['data'.tr]!['subobject']}');
          subChainsText = 'remember_view_on'.trParams({'count': (pairsController.arrayInterval - 1).toString()});
        } else if(pairsController.isLastSet) {
          for(int i = 0; i < pairsController.mainChain.length; i++) {
            displayedChain.add('${i + 1} ${wordsMap['data'.tr]!['chain_element']}');
            displayedChain.add('1 ${wordsMap['data'.tr]!['subobject']}');
            displayedChain.add('2 ${wordsMap['data'.tr]!['subobject']}');
            displayedChain.add('3 ${wordsMap['data'.tr]!['subobject']}');
            displayedChain.add('4 ${wordsMap['data'.tr]!['subobject']}');
            displayedChain.add('5 ${wordsMap['data'.tr]!['subobject']}');
          }
        }
      }
       else if(pairsController.isLociiPractical) {
        if(pairsController.isLastSet) {
          if(pairsController.isTelPractical) {
            displayedChain = List.generate(pairsController.chains[pairsController.arrayInterval - 1].length, (i) => '${i+1} ${pairsController.telCarText}');
          } else {
            for(int i = 0; i < pairsController.chains.length; i++) {
              for(int j = 0; j < pairsController.chains[i].length; j++) {
                displayedChain.add('${j+1} ${wordsMap['data'.tr]!['subobject']} ${i+1} ${wordsMap['data'.tr]!['loci']}');
              }
            }
          }
        } else {
          if(pairsController.isTelPractical) {
            displayedChain = List.generate(pairsController.chains[pairsController.arrayInterval - 1].length, (i) => '${i+1 + pairsController.countOfOnePass * (pairsController.arrayInterval - 1)} ${pairsController.telCarText}');
          } else {
            displayedChain = List.generate(pairsController.chains[pairsController.arrayInterval - 1].length, (i) => '${i + 1} ${wordsMap['data'.tr]!['subobject']} ${pairsController.arrayInterval } ${wordsMap['data'.tr]!['loci']}');
          }
        }
      }


      if(pairsController.isChainPractical) {
        if(pairsController.isSingleChain) {
          chain.addAll(pairsController.chain);
        } else if(pairsController.mainChain.isNotEmpty) {
          if(pairsController.arrayInterval == 1) {
            chain.addAll(pairsController.mainChain);
          } else if(pairsController.isLastSet) {
            if(pairsController.isLastSet) {
              chains = List.generate(pairsController.chains.length, (index) => []);
              for(int i = 0; i < pairsController.chains.length; i++) {
                chains[i].add(pairsController.mainChain[i]);
                chains[i].add(pairsController.mainChain[i]);
                chain.add(pairsController.mainChain[i]);
                for(int j = 0; j < pairsController.chains[i].length; j++) {
                  chains[i].add(pairsController.chains[i][j]);
                  chain.add(pairsController.chains[i][j]);
                }
              }
            }
          } else {
            chain = pairsController.chain.getRange(
                (pairsController.arrayInterval - 2) * pairsController.countOfOnePass,
                (pairsController.arrayInterval - 1) * pairsController.countOfOnePass
            ).toList();
          }
        } else {
          if(pairsController.isLastSet) {
            chains = List.generate(pairsController.chains.length, (index) => []);
            for(int i = 0; i < pairsController.chains.length; i++) {
              pairsController.isCustomReferenceList
                  ? chains[i].add(pairsController.referencesList[i])
                  : pairsController.isLociiPractical ? chains[i].add('${i+1} ${wordsMap['data'.tr]!['locia']}') : chains[i].add('${i+1} ${wordsMap['data'.tr]!['reference']}');
              for(int j = 0; j < pairsController.chains[i].length; j++) {
                chains[i].add(pairsController.chains[i][j]);
                chain.add(pairsController.chains[i][j]);
              }
            }
          } else {
            chain.addAll(pairsController.chains[pairsController.arrayInterval - 1]);
          }
        }
      } else {
        if (pairsController.isLastSetGlobal && pairsController.isLastSet) {
          pairs = shuffle(pairsController.pairs);
        } else if (pairsController.globalArrayInterval == 1) {
            if (pairsController.isLastSet) {
              pairs = shuffle(pairsController.pairs.getRange(0, globalPairsCount).toList());
            } else {
             pairs = shuffle(pairsController.pairs.getRange(
               (pairsController.arrayInterval - 1) * pairsController.countOfOnePass,
               pairsController.arrayInterval * pairsController.countOfOnePass - (pairsController.countMinusOfLastPass != 0 && pairsController.arrayInterval == pairsController.maxArrayInterval - 1 ? pairsController.countMinusOfLastPass : 0)
             ).toList());
            }
          } else if (pairsController.globalArrayInterval == 2) {
            if (pairsController.isLastSet) {
              pairs = shuffle(pairsController.pairs.getRange(
                  globalPairsCount, globalPairsCount * 2).toList());
            } else {
              pairs = shuffle(pairsController.pairs.getRange(
                  (pairsController.arrayInterval - 1) * pairsController.countOfOnePass + globalPairsCount,
                  pairsController.arrayInterval * pairsController.countOfOnePass + globalPairsCount
              ).toList());
            }
          } else if (pairsController.globalArrayInterval == 3) {
            if (pairsController.isLastSet) {
              pairs = shuffle(pairsController.pairs.getRange(
                  globalPairsCount * 2, globalPairsCount * 3).toList());
            } else {
              pairs = shuffle(pairsController.pairs.getRange(
                  (pairsController.arrayInterval - 1) * pairsController.countOfOnePass + (globalPairsCount * 2),
                  pairsController.arrayInterval * pairsController.countOfOnePass + (globalPairsCount * 2)
              ).toList());
            }
          }
        }
      }


    if(pairsController.isCustomReferenceList && !pairsController.isLastSet) {
      chain.insert(0, pairsController.referencesList[pairsController.arrayInterval - 1]);

    } else if(pairsController.isChainPractical) {
      if(pairsController.isLociiPractical) {
        chain.insert(0, '${pairsController.arrayInterval} ${wordsMap['data'.tr]!['locia']}');
      } else {
        chain.insert(0, '${pairsController.arrayInterval} ${wordsMap['data'.tr]!['reference']}');
      }
    }



    if(!pairsController.isChainPractical) {
      pairsController.lieAnswersPairs = [];
      pairsController.timesUpPairs = [];
      pairsController.rightAnswersPairs = [];
    }


    int length = pairsController.isChainPractical
      ? chain.length - 1
      : pairs.length;

    int row = 0;
    int column = 0;

    int chainsPassedLength = 0;
    List<String> pathesList = [];
    if(pairsController.paths.isNotEmpty && pairsController.chains.isNotEmpty) {
      if(pairsController.isCorrection) {
        for(int i = 0; i < pairsController.chainsToFix.length; i++) {
          if(!pairsController.chainsToFix[i].isFixed) {
            for(int j = 0; j < pairsController.chainsToFix[i].chain.length; j++) {
              pathesList.add(pairsController.paths[j + chainsPassedLength]);
            }
          }
          chainsPassedLength += pairsController.chains[i].length;
        }
      } else {
        for(int i = 0; i < pairsController.arrayInterval - 1; i++) {
          chainsPassedLength += pairsController.chains[i].length;
        }
      }
    }

    final Random random = Random();

    return WillPopScope(
      onWillPop: () async {
        final shouldClose = await showWarningDialog();
        if(pairsController.isFormCheck && shouldClose) focusNode.unfocus();
        return shouldClose ?? false;
      },
      child: GestureDetector(
        onTap: () => focusNode.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: kblueBG,
          appBar: AppBar(
            backgroundColor: kblue,
            title: Text(pairsController.title, style: Get.textTheme.headline1, maxLines: 2,),
            leading: const CloseIconButton(),
            actions:  [
              pairsController.isBigPicturePractical ? Obx(() => Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  '${Get.find<PageControllerIndex>().pageIndex.value + 1}/$length',
                  style: Get.textTheme.headline2!.copyWith(color: Colors.white),
                ),
              )) : Container(),
              IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    if(pageController.page != 0) {
                      pairsController.lieAnswersPairs = [];
                      pairsController.rightAnswersPairs = [];
                      pairsController.timesUpPairs = [];
                      pairsController.chainElements.clear();
                      timerController.timer!.cancel();
                      timerController.seconds.value = pairsController.maxSecondsCheck;
                      textEditingController.clear();
                      pairs.shuffle();
                      focusNode.unfocus();
                      timerController.isTapped.value = false;
                      row = 0;
                      column = 0;
                      if(pairsController.isFormCheckBoxExist) Get.find<CheckBoxController>().isChecked.value = false;
                      if(pairsController.isBigPicturePractical) Get.find<PageControllerIndex>().pageIndex.value = 0;
                      pageController.jumpTo(0);
                    }
                  },
                  icon: const Icon(Icons.update, color: Colors.white, size: 30,)
              ),
            ],
          ),
          body: PageView.builder(
            controller: pageController,
            itemBuilder: (context, index) {
              int randomPlace = random.nextInt(4);

              String firstValue = '';
              String secondValue = '';
              List<String> lieWords = [];
              final GlobalKey<FormState> formKey = GlobalKey<FormState>();

              // last set
              int countOf = 0;

              if(pairsController.chains.isNotEmpty && pairsController.isLastSet) {

                if(column + 1 == chains[row].length) {
                  row++;
                  column = 0;
                }
              } else {
                if(pairsController.mainChain.isNotEmpty) {
                  countOf = pairsController.mainChain.length;
                }  else {
                  countOf = pairsController.countOfOnePass;
                }

                if(index % countOf == 0 && index != 0) {
                  row++;
                  column = 0;
                }
              }

              // first & second value присвоение
              if(pairsController.isChainPractical) {
                firstValue = pairsController.isLastSet ? chains[row][column] : chain[index];
                secondValue = pairsController.isLastSet ? chains[row][column + 1] : chain[index + 1];
              } else {
                if(pairsController.isRepeatPractical) {
                  firstValue = pairsController.repeatInterval <= 3 ? pairs[index][0] : pairs[index][1];
                  secondValue = pairsController.repeatInterval <= 3 ? pairs[index][1] : pairs[index][0];
                } else {
                  firstValue = pairsController.isOnlyOneValueInCheck ? pairs[index][1] : pairs[index][Random().nextInt(2)];
                  secondValue = firstValue == pairs[index][0] ? pairs[index][1] : pairs[index][0];
                }
              }
              column++;

              if(!pairsController.isFormCheck) {
                if (pairsController.isRepeatPractical) {
                  if (pairsController.repeatInterval <= 3) {
                    if (pairsController.isLastSet) {
                      lieWords = createLieValues(secondValue: secondValue, index: 1, pairs: pairsController.pairs);
                    } else {
                      lieWords = createLieValues(secondValue: secondValue, index: 1, pairs: pairs);
                    }
                  } else {
                    if (pairsController.isLastSet) {
                      lieWords = createLieValues(secondValue: secondValue, index: 0, pairs: pairsController.pairs);
                    } else {
                      lieWords = lieWords = createLieValues(secondValue: secondValue, index: 0, pairs: pairs);
                    }
                  }
                }
                else if(pairsController.isNumbersExercise) {
                  lieWords = makeRandomNumber(currentNumber: int.parse(secondValue),isThreeNumber:  secondValue.length == 3);
                } else if (pairsController.isNamePractical) {
                  if (pairs[index][2] == 'male') {
                    lieWords = createLieValuesFromList(
                        firstValue, secondValue, Codes.namesMale['data'.tr]!);
                  } else {
                    lieWords = createLieValuesFromList(
                        firstValue, secondValue, Codes.namesFemale['data'.tr]!);
                  }
                } else {
                  if (pairsController.isLieList) {
                    lieWords = createLieValuesFromList(firstValue, secondValue, pairsController.lieValues);

                  }
                  else {
                    if (firstValue == pairs[index][0]) {
                      if (pairsController.isLastSet) {
                        lieWords = createLieValues(secondValue: secondValue, index: 1, pairs: pairsController.pairs);
                      } else {
                        lieWords = createLieValues(secondValue: secondValue, index: 1, pairs: pairs);
                      }
                    } else {
                      // isOnlyOneValueInCheck ветвь
                      if (pairsController.isLastSet) {
                        lieWords = createLieValues(secondValue: secondValue, index: 0, pairs: pairsController.pairs, isRepeatPairValue: pairsController.isRepeatPairValue, secondValueIndex: index, firstValue: firstValue);
                      } else {
                        lieWords = lieWords = createLieValues(secondValue: secondValue, index: 0, pairs: pairs);
                      }
                    }
                  }
                }
              }


              return Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: pairsController.isBigPicturePractical ? 0 : 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          pairsController.isBigPicturePractical ? Stack(
                            children: [
                              Center(child: SizedBox(height: 400,child: ExpansionImage(path: pairs[index][1], isNetwork: true,))),
                              Positioned(
                                top: 20,
                                child: CustomCircularPB(
                                  pageController: pageController,
                                  maxSeconds: pairsController.maxSecondsCheck,
                                  firstValue: firstValue,
                                  secondCorrect: secondValue,
                                  index: index,
                                  nextPage: pairsController.nextPageResult!,
                                  maxLength: length,
                                  isSmallSize: pairsController.isSmallSizePB,
                                  isTopIndex: true,
                                  isMale: pairs[index][2] == 'male',
                                  isChain: pairsController.isChainPractical,
                                  isFormCheckBoxExist: pairsController.isFormCheckBoxExist
                                ),
                              ),
                            ],
                          ) : pairsController.isSmallPicturePractical ? Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomCircularPB(
                                    pageController: pageController,
                                    maxSeconds: pairsController.maxSecondsCheck,
                                    firstValue: firstValue,
                                    secondCorrect: secondValue,
                                    index: index,
                                    nextPage: pairsController.nextPageResult!,
                                    maxLength: length,
                                    isSmallSize: pairsController.isSmallSizePB,
                                    isChain: pairsController.isChainPractical,
                                    isFormCheckBoxExist: pairsController.isFormCheckBoxExist
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 200,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(50),
                                          child: LinearProgressIndicator(
                                            color: Colors.black,
                                            backgroundColor: kgreyLinearPB,
                                            value: (index + 1) / length,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        '${index+1}/$length',
                                        style: Get.textTheme.headline2,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              sizedBoxLow(),
                              pairsController.isChainPractical
                                  ? pairsController.isLastSet
                                      ? Center(child: SizedBox(height: 300, child: pairsController.isExpandableImage ? ExpansionImage(path: pairsController.isCorrection && pairsController.chains.isNotEmpty ? pathesList[index] : pairsController.paths[index], isSvg: true,) : SvgPicture.asset(pairsController.paths[index])))
                                      : Center(child: SizedBox(height: 300, child: pairsController.isExpandableImage
                                          ? pairsController.chains.isEmpty
                                              ? ExpansionImage(path: pairsController.paths[index + pairsController.countOfOnePass * (pairsController.arrayInterval - 1)], isSvg: true,)
                                              : ExpansionImage(path: pairsController.paths[index + chainsPassedLength], isSvg: true,)
                                          : SvgPicture.asset(pairsController.paths[index + pairsController.countOfOnePass * (pairsController.arrayInterval - 1)])))
                                  : Center(child: SizedBox(height: 300, child: pairsController.isExpandableImage ? ExpansionImage(path: pairs[index][1], isSvg: true,) : SvgPicture.asset(pairs[index][1], height: 300,))),
                            ],
                          ) : Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 50),
                                height: 20,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: LinearProgressIndicator(
                                    color: Colors.black,
                                    backgroundColor: kgreyLinearPB,
                                    value: (index + 1) / length,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${index+1}/$length',
                                style: Get.textTheme.headline2,
                              ),
                              const SizedBox(height: 25),
                              CustomCircularPB(
                                pageController: pageController,
                                firstValue: firstValue,
                                secondCorrect: secondValue,
                                index: index,
                                maxSeconds: pairsController.maxSecondsCheck,
                                nextPage: pairsController.nextPageResult!,
                                maxLength: length,
                                isMiddleSize: pairsController.isMiddleSizePB,
                                isSmallSize: pairsController.isSmallSizePB,
                                isChain: pairsController.isChainPractical,
                                isFormCheckBoxExist: pairsController.isFormCheckBoxExist,
                                textEditingController: textEditingController,
                                focusNode: focusNode,
                                isFormCheck: pairsController.isFormCheck,
                              ),
                            ],
                          ),
                          pairsController.isBigPicturePractical || pairsController.isSmallPicturePractical ? Container() : const SizedBox(height: 25),
                          pairsController.mainChain.isNotEmpty ? Column(
                            children: [
                              pairsController.arrayInterval > 1 ? Text(
                                subChainsText,
                                style: Get.textTheme.bodyText1,
                                textAlign: TextAlign.center,
                              ) : Container(),
                              const SizedBox(height: 25),
                              Text(
                                pairsController.arrayInterval > 1 ? '${displayedChain[index]} - ?' : '$firstValue - ?',
                                style: Get.textTheme.headline2!.copyWith(fontSize: 28),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ) : Container(),
                          pairsController.isLociiPractical ? Text(
                            displayedChain[index],
                            style: Get.textTheme.headline2!.copyWith(fontSize: 28),
                            textAlign: TextAlign.center,
                          ) : Container(),
                          pairsController.mainChain.isNotEmpty || pairsController.isLociiPractical || pairsController.isBigPicturePractical || pairsController.isSmallPicturePractical ? Container() : SizedBox(
                            height: pairsController.isLongOneValue ? 100 : 65,
                            child: Text(
                              '$firstValue - ?',
                              style: Get.textTheme.headline2!.copyWith(fontSize: pairsController.isSmallTitle ? 24 : 28),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 25,),
                          (pairsController.repeatInterval == 1 || pairsController.repeatInterval == 4) && !pairsController.isCodesTrainPractical
                            ? pairsController.isFormCheck ? SizedBox(
                                 height: 90,
                                 child: CustomCheckForm(
                                   formKey: formKey,
                                   maskFormatter: pairsController.maskFormatter,
                                   focusNode: focusNode,
                                   textEditingController: textEditingController,
                                   hintText: pairsController.formHintText,
                                   textInputType: pairsController.textInputType,
                                 ),
                               ) : Column(
                                    children: [
                                      Row(
                                        children: [
                                          CustomOption(
                                            value: randomPlace == 0 ? secondValue : lieWords[0],
                                            index: index,
                                            correctValue: secondValue,
                                            firstValue: firstValue,
                                            isCorrect: randomPlace == 0,
                                            pageController: pageController,
                                            maxLength: length,
                                            maxSeconds: pairsController.maxSecondsCheck,
                                            nextPage: pairsController.nextPageResult!,
                                            isTopIndex: pairsController.isBigPicturePractical,
                                            isMale: pairsController.isNamePractical ? pairs[index][2] == 'male' : false,
                                            isChain: pairsController.isChainPractical,
                                            isSmallOptionsText: pairsController.isSmallOptionsText
                                          ),
                                          CustomOption(
                                            value: randomPlace == 1 ? secondValue : lieWords[1],
                                            index: index,
                                            correctValue: secondValue,
                                            firstValue: firstValue,
                                            isCorrect: randomPlace == 1,
                                            pageController: pageController,
                                            maxLength: length,
                                            maxSeconds: pairsController.maxSecondsCheck,
                                            nextPage: pairsController.nextPageResult!,
                                            isTopIndex: pairsController.isBigPicturePractical,
                                            isMale: pairsController.isNamePractical ? pairs[index][2] == 'male' : false,
                                            isChain: pairsController.isChainPractical,
                                            isSmallOptionsText: pairsController.isSmallOptionsText
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          CustomOption(
                                            value: randomPlace == 2 ? secondValue : lieWords[2],
                                            index: index,
                                            correctValue: secondValue,
                                            firstValue: firstValue,
                                            isCorrect: randomPlace == 2,
                                            pageController: pageController,
                                            maxLength: length,
                                            maxSeconds: pairsController.maxSecondsCheck,
                                            nextPage: pairsController.nextPageResult!,
                                            isTopIndex: pairsController.isBigPicturePractical,
                                            isMale: pairsController.isNamePractical ? pairs[index][2] == 'male' : false,
                                            isChain: pairsController.isChainPractical,
                                            isSmallOptionsText: pairsController.isSmallOptionsText
                                          ),
                                          CustomOption(
                                            value: randomPlace == 3 ? secondValue : lieWords[3],
                                            index: index,
                                            correctValue: secondValue,
                                            firstValue: firstValue,
                                            isCorrect: randomPlace == 3,
                                            pageController: pageController,
                                            maxLength: length,
                                            maxSeconds: pairsController.maxSecondsCheck,
                                            nextPage: pairsController.nextPageResult!,
                                            isTopIndex: pairsController.isBigPicturePractical,
                                            isMale: pairsController.isNamePractical ? pairs[index][2] == 'male' : false,
                                            isChain: pairsController.isChainPractical,
                                            isSmallOptionsText: pairsController.isSmallOptionsText
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                             : Row(
                            children: [
                              CustomOption(
                                value: 'remember'.tr,
                                index: index,
                                correctValue: secondValue,
                                firstValue: firstValue,
                                isCorrect: true,
                                pageController: pageController,
                                maxLength: length,
                                maxSeconds: pairsController.maxSecondsCheck,
                                nextPage: pairsController.nextPageResult!,
                                isTrueFalseOption: true,
                                isChain: pairsController.isChainPractical,
                              ),
                              CustomOption(
                                value: 'not_remember'.tr,
                                index: index,
                                correctValue: secondValue,
                                firstValue: firstValue,
                                isCorrect: false,
                                pageController: pageController,
                                maxLength: length,
                                maxSeconds: pairsController.maxSecondsCheck,
                                nextPage: pairsController.nextPageResult!,
                                isTrueFalseOption: true,
                                isChain: pairsController.isChainPractical,
                              )
                            ],
                          ),
                          (pairsController.repeatInterval == 1 || pairsController.repeatInterval == 4) && pairsController.isFormCheckBoxExist ? Obx( () {
                            final checkBoxController = Get.find<CheckBoxController>();
                            return Theme(
                              data: ThemeData().copyWith(unselectedWidgetColor: Colors.black),
                              child: CheckboxListTile(
                                controlAffinity: ListTileControlAffinity.leading,
                                activeColor: kblue,
                                value: checkBoxController.isChecked.value,
                                onChanged: (isChecked) => checkBoxController.isChecked.value = !checkBoxController.isChecked.value,
                                title: Text(
                                  '${'remember'.tr} ${pairsController.formCheckBoxHint}',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: checkBoxController.isChecked.value ? kblue : Colors.black
                                  ),
                                ),
                              ),
                            );
                          }) : Container(),
                        ],
                      ),
                      pairsController.isFormCheck ? CustomButton(
                          title: index + 1 == length ? 'continue'.tr : 'next'.tr,
                          color: kblue,
                          handler: () {
                            if(pairsController.isFormCheckBoxExist) {
                              if(!Get.find<CheckBoxController>().isChecked.value && !formKey.currentState!.validate()) return;
                            } else {
                              if(!formKey.currentState!.validate()) return;
                            }


                            bool isCorrect = false;
                            if(pairsController.isPasswordPractical) {
                              isCorrect = textEditingController.text == secondValue;
                            } else {
                              isCorrect = textEditingController.text.removeAllWhitespace.toLowerCase() == secondValue.removeAllWhitespace.toLowerCase();
                            }



                            final Color tappedColor = isCorrect ? kblue : kred;
                            final IconData tappedIcon = isCorrect ? Icons.check_circle : Icons.cancel;
                            final String tappedText = isCorrect ? 'correct_one'.tr : 'incorrect_one'.tr;


                            if(pairsController.isChainPractical) {
                              pairsController.chainElements.add(
                                ChainElement(
                                  isCorrect: isCorrect,
                                  element: firstValue,
                                  nextElement: secondValue,
                                  answeredFalseNextElement: textEditingController.text,
                                  isRememberView: pairsController.isFormCheckBoxExist ? Get.find<CheckBoxController>().isChecked.value : false
                                )
                              );
                            } else {
                              if(isCorrect) {
                                pairsController.rightAnswersPairs.add(
                                    Pair(
                                        firstValue: firstValue,
                                        secondCorrect: secondValue,
                                        secondValue: textEditingController.text,
                                        isCorrect: isCorrect
                                    )
                                );
                              } else {
                                pairsController.lieAnswersPairs.add(
                                    Pair(
                                        firstValue: firstValue,
                                        secondCorrect: secondValue,
                                        secondValue: textEditingController.text,
                                        isCorrect: isCorrect
                                    )
                                );
                              }
                            }

                              focusNode.unfocus();


                              showModalBottomSheet(
                                enableDrag: false,
                                context: context, builder: (context) =>  WillPopScope(
                                  onWillPop: () async => false,
                                  child: Container(
                                  decoration: BoxDecoration(
                                      color: tappedColor.withOpacity(0.2),
                                      borderRadius: const BorderRadius.vertical(top: Radius.circular(18))
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  // height: widget.isCorrect ? 100 : 160,
                                  height: 100,
                                  child:
                                  // widget.isCorrect ?
                                  Center(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                              tappedIcon,
                                              color: tappedColor,
                                              size: 60
                                          ),
                                          const SizedBox(width: 16),
                                          Text(
                                            tappedText,
                                            style: Get.textTheme.headline2!.copyWith(color: tappedColor, fontSize: 30),
                                          ),
                                        ],
                                      )
                                  )
                            ),
                                ),
                                elevation: 0,
                                isDismissible: false,
                                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
                                barrierColor: Colors.transparent
                            );


                            timerController.timer!.cancel();

                            Future.delayed(const Duration(milliseconds: 300), () {
                              textEditingController.clear();
                              timerController.seconds.value = pairsController.maxSecondsCheck;
                              timerController.isTapped.value = false;
                              if(pairsController.isFormCheckBoxExist) Get.find<CheckBoxController>().isChecked.value = false;
                              Navigator.pop(context);

                              if(index + 1 == length) {
                                Get.off(pairsController.nextPageResult, transition: Transition.rightToLeft);
                              } else {
                                pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.easeIn);
                              }

                            });
                          }
                      ) : Container()
                    ]
                ),
              );
            } ,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: length,
          ),
        ),
      ),
    );
  }
}





