import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/abstract_words.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/words.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/pracal_locii_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/utils/generate_numbers.dart';
import 'package:practical_mnemonic/utils/make_pairs.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_tile.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import '../practical_pages/practical_chain_result.dart';
import '../practical_pages/practical_pairs_start.dart';
import '../utils/generate_car_numbers.dart';
import '../utils/generate_names.dart';
import '../utils/generate_passwords.dart';
import '../utils/generate_tel_numbers.dart';
import '../utils/make_chain.dart';
import '../widgets/custom_button.dart';


class ExercisePage extends StatelessWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Map<String, List<String>> titles = {
      'en': [
        'Word - word',
        '100 words under numbers',
        'Names',
        'Word sequence',
        'Number sequence',
        'Phone numbers',
        'Car numbers',
        'Passwords',
      ],
      'ru': [
        'Слово - слово',
        '100 слов под номерами',
        'Имена',
        'Последовательность слов',
        'Последовательность цифр',
        'Телефонные номера',
        'Номера машин',
        'Пароли',
      ]
    };

    // word-word
    // word-number
    // names
    // word-chain
    // number-chain
    // phone-numbers
    // car-numbers
    // passwords

    final box = GetStorage();
    final isPr = box.read('isPr');

    if(box.read('word-word')) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: kblueBG,
            appBar: AppBar(
              backgroundColor: kblue,
              title: Text('exercises'.tr, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
              centerTitle: true,
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                unselectedLabelColor: kgreyLinearPB,
                indicatorWeight: 4,
                tabs: [
                  const Tab(text: '1:1',),
                  Tab(text: 'sequences'.tr, ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    CustomTile(
                        title: titles['data'.tr]![0],
                        iconPath: 'assets/exercise-icons/w-w.svg',
                        handler: () async => await Get.dialog(
                            ModuleExerciseDialog(
                              index: 0,
                              title: titles['data'.tr]![0],
                            )
                        )
                    ),
                    sizedBoxLow(),
                    box.read('word-number')
                      ? CustomTile(
                        title: titles['data'.tr]![1],
                        iconPath: 'assets/exercise-icons/w-99.svg',
                        handler: () async => await Get.dialog(
                          ModuleExerciseDialog(
                            index: 1,
                            title: titles['data'.tr]![1],
                            isNumbersEx: true,
                          )
                        )
                      )
                      : CustomTileDisabled(
                        title: titles['data'.tr]![1],
                        dialogWidgetText: [
                          TextSpan(text: 'to_open_exercise'.tr),
                          TextSpan(text: 'module_n'.trParams({'m': '4'}), style: const TextStyle(color: kblue)),
                        ],
                    ),
                    sizedBoxLow(),
                    !isPr ? CustomTileDisabled(
                      title: titles['data'.tr]![2],
                      isShowPremDialog: true,
                    ) : box.read('names') ? CustomTile(
                      title: titles['data'.tr]![2],
                      iconPath: 'assets/exercise-icons/name.svg',
                      handler: () async => await Get.dialog(
                        ModuleExerciseDialog(
                          index: 2,
                          title: titles['data'.tr]![2],
                        )
                      )
                    ) : CustomTileDisabled(
                      title: titles['data'.tr]![2],
                      dialogWidgetText: [
                        TextSpan(text: 'to_open_exercise'.tr),
                        TextSpan(text: 'module_n'.trParams({'m': '6'}), style: const TextStyle(color: kblue)),
                      ],
                    ),
                  ],
                ),
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    box.read('word-chain')
                      ?  CustomTile(
                          title: titles['data'.tr]![3],
                          iconPath: 'assets/exercise-icons/w-w-w.svg',
                          handler: () async => await Get.dialog(
                              ModuleExerciseDialog(
                                index: 3,
                                title: titles['data'.tr]![3],
                              )
                          )
                      )
                      : CustomTileDisabled(
                          title: titles['data'.tr]![3],
                          dialogWidgetText: [
                            TextSpan(text: 'to_open_exercise'.tr),
                            TextSpan(text: 'module_n'.trParams({'m': '2'}), style: const TextStyle(color: kblue)),
                          ],
                        ),
                    sizedBoxLow(),
                    box.read('number-chain') ? CustomTile(
                        title: titles['data'.tr]![4],
                        iconPath: 'assets/exercise-icons/99-99-99.svg',
                        handler: () async => await Get.dialog(
                          ModuleExerciseDialog(
                            index: 4,
                            title: titles['data'.tr]![4],
                          )
                        )
                      ) :  CustomTileDisabled(
                      title: titles['data'.tr]![4],
                      dialogWidgetText: [
                        TextSpan(text: 'to_open_exercise'.tr),
                        TextSpan(text: 'module_n'.trParams({'m': '4'}), style: const TextStyle(color: kblue)),
                      ],
                    ),
                    sizedBoxLow(),
                    !isPr ? CustomTileDisabled(
                      title: titles['data'.tr]![5],
                      isShowPremDialog: true,
                    ) : box.read('phone-numbers') ? CustomTile(
                        title: titles['data'.tr]![5],
                        iconPath: 'assets/exercise-icons/phone-number.svg',
                        handler: () async => await Get.dialog(
                          ModuleExerciseDialog(
                            index: 5,
                            title: titles['data'.tr]![5],
                          )
                        )
                      ) : CustomTileDisabled(
                        title: titles['data'.tr]![5],
                        dialogWidgetText: [
                          TextSpan(text: 'to_open_exercise'.tr),
                          TextSpan(text: 'module_n'.trParams({'m': '5'}), style: const TextStyle(color: kblue)),
                        ],
                      ),
                    sizedBoxLow(),
                    !isPr ? CustomTileDisabled(
                      title: titles['data'.tr]![6],
                      isShowPremDialog: true,
                    ) : box.read('car-numbers') ?  CustomTile(
                        title: titles['data'.tr]![6],
                        iconPath: 'assets/exercise-icons/car-num.svg',
                        handler: () async => await Get.dialog(
                          ModuleExerciseDialog(
                            index: 6,
                            title: titles['data'.tr]![6],
                          )
                        )
                      ) : CustomTileDisabled(
                        title: titles['data'.tr]![6],
                        dialogWidgetText:  [
                          TextSpan(text: 'to_open_exercise'.tr),
                          TextSpan(text: 'module_n'.trParams({'m': '5'}), style: const TextStyle(color: kblue)),
                        ],
                      ),
                    sizedBoxLow(),
                    !isPr ? CustomTileDisabled(
                      title: titles['data'.tr]![7],
                      isShowPremDialog: true,
                    ) : box.read('passwords') ? CustomTile(
                        title: titles['data'.tr]![7],
                        iconPath: 'assets/exercise-icons/password.svg',
                        handler: () async => await Get.dialog(
                          ModuleExerciseDialog(
                            index: 7,
                            title: titles['data'.tr]![7],
                          )
                        )
                      )
                    :  CustomTileDisabled(
                      title: titles['data'.tr]![7],
                      dialogWidgetText:  [
                        TextSpan(text: 'to_open_exercise'.tr),
                        TextSpan(text: 'module_n'.trParams({'m': '5'}), style: const TextStyle(color: kblue)),
                      ],
                    ),
                  ],
                )
              ],
            )

        ),
      );
    } else {
      return Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text('exercises'.tr, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
          centerTitle: true,
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text:  TextSpan(
              style: const TextStyle(fontSize: 24, color: Colors.black),
              children: [
                TextSpan(text: 'exercises_not_access_text'.tr),
                TextSpan(text: 'module_n'.trParams({'m': '1'}), style: const TextStyle(color: kblue)),
              ]
            ),
          )
        ),
      );
    }
  }
}

class ModuleExerciseDialog extends StatelessWidget {
  const ModuleExerciseDialog({
    Key? key,
    required this.index,
    required this.title,
    this.isNumbersEx = false,
  }) : super(key: key);

  final int index;
  final String title;
  final bool isNumbersEx;


  @override
  Widget build(BuildContext context) {
    List<double> initialValuesSlider = [];
    if(index <= 4) {
      initialValuesSlider = [50, 10, 15];
    } else {
      initialValuesSlider = [10, 5, 60];
    }
    List<bool> initialValuesCB = [false, true, false];
    final SliderController sliderController = Get.put(SliderController());
    final CheckBoxListController checkBoxListController = Get.put(CheckBoxListController());

    sliderController.values = RxList.generate(initialValuesSlider.length, (i) => RxDouble(initialValuesSlider[i]));
    checkBoxListController.isCheckedValues = RxList.generate(initialValuesCB.length, (i) => RxBool(initialValuesCB[i]));

    String countText = '';
    if(index == 0 || index == 1) {
      countText = 'pairs_amount'.tr;
    } else if(index == 2) {
      countText = 'names_amount'.tr;
    } else if(index == 3) {
      countText = 'words_amount'.tr;
    } else if(index == 4) {
      countText = 'numbers_amount'.tr;
    } else if(index == 5 || index == 6) {
      countText = 'numbers_amount'.tr;
    } else if(index == 7) {
      countText = 'passwords_amount'.tr;
    }




    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Container(
        decoration: BoxDecoration(
          color: kModuleDialogBg,
          borderRadius: BorderRadius.circular(18),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Center(
              child: SizedBox(
                height: 60,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 320,
              child: Scrollbar(
                isAlwaysShown: true,
                thickness: 3,
                showTrackOnHover: true,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      index == 0 || index == 1 || index == 3 ? _buildCustomCheckBoxListTile('abstract_words'.tr, 0) : Container(),
                      index == 4 ? _buildCustomCheckBoxListTile('three_digit_numbers'.tr, 2) : Container(),
                      _buildCustomCheckBoxListTile('error_correction'.tr, 1),
                      const SizedBox(height: 16,),
                      isNumbersEx ? Container() : CustomSliderWidget(index: 0, tileIndex: index, subtitle: countText, min: index <= 4 ? 10.0 : 5.0, max: index <= 4 ? 100.0 : 20, divisions: index <= 4 ? 9 : 3,),
                      isNumbersEx ? Container() : const SizedBox(height: 25,),
                      CustomSliderWidget(index: 1, tileIndex: index, subtitle: 'memorize_for_pass'.tr, min: 5, max: 20, divisions: 3,),
                      const SizedBox(height: 25,),
                      CustomSliderWidget(index: 2, tileIndex: index, subtitle: 'memorizing_time'.tr, min: index <= 4 ? 5 : 15, max: index <= 4 ? 30 : 90, divisions: 5,),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
             CustomButton(
                title: 'start'.tr,
                color: kblue,
                handler: () {
                  final pairsController = Get.put(PairsController(), permanent: true);
                  pairsController.clear();
                  pairsController.title = title;
                  pairsController.maxSecondsStart = sliderController.values[2].value.toInt();
                  pairsController.countOfOnePass = sliderController.values[1].value.toInt();


                  int intCount = 0;
                  int lastCount = 0;

                  if(isNumbersEx) {
                    intCount = 100 ~/ sliderController.values[1].value;
                    lastCount = (100 % sliderController.values[1].value.toInt()) as int;
                  } else {
                    intCount = sliderController.values[0].value ~/ sliderController.values[1].value;
                    lastCount = sliderController.values[0].value.toInt() % sliderController.values[1].value.toInt();
                  }

                  if(!checkBoxListController.isCheckedValues[1].value) {
                    pairsController.isNotCheck = true;
                  }


                  int total = pairsController.countOfOnePass * intCount + lastCount;
                  if(lastCount != 0) pairsController.countMinusOfLastPass = pairsController.countOfOnePass - lastCount;
                  if(pairsController.countOfOnePass == total) {
                    pairsController.isLastSet = true;
                  } else if(lastCount == 0) {
                    pairsController.maxArrayInterval = intCount + 1;
                  } else {
                    pairsController.maxArrayInterval = intCount + 2;
                  }


                  if(isNumbersEx) {
                    pairsController.isToggleNumbers = true;
                    pairsController.practicalKey = '100_word_number';
                  } else if(index == 0 || index == 3) {
                    pairsController.isLieList = true;
                  }

                  if(index == 0 || index == 1 || index == 3) pairsController.lieValues.addAll(Words.words['data'.tr]!.toList());

                  if(checkBoxListController.isCheckedValues[0].value) {
                    pairsController.lieValues.addAll(AbstractWords.words['data'.tr]!.toList());
                  }

                  if(index <= 2) {
                    pairsController.nextPageResult = const PracticalPairsResult();

                    if(index == 2) {

                      pairsController.isOnlyOneValueInCheck = true;
                      pairsController.isSmallSizePB = true;
                      pairsController.isBigPicturePractical = true;
                      pairsController.isNamePractical = true;

                      pairsController.pairs = generateNames(total: total, context: context);


                    } else {
                      pairsController.pairs = makePairs(count: total, words: pairsController.lieValues, isNumbersEx : isNumbersEx);
                    }


                  } else if(index >= 3) {
                    pairsController.isChainPractical = true;
                    if(index == 3) {
                      pairsController.chain = makeChain(chainCount: total, words: pairsController.lieValues);
                      pairsController.nextPageResult = const PracticalChainResult();
                    } else if(index == 4) {
                      pairsController.isNumbersExercise = true;
                      pairsController.isLociiPractical = true;
                      pairsController.chain = generateNumbers(chainCount: total, isThreeNumber: checkBoxListController.isCheckedValues[2].value);
                      pairsController.nextPageResult = const PracticalLociiResult();
                    } else if(index >= 5) {
                      pairsController.maxSecondsCheck = 30;
                      pairsController.isFormCheck = true;
                      pairsController.isLociiPractical = true;
                      pairsController.isTelPractical = true;
                      pairsController.nextPageResult = const PracticalChainResult();
                      pairsController.enableCorrection = false;

                      if(index == 5) {
                        pairsController.formHintText = 'phone_number_hint'.tr;
                        pairsController.telCarText = 'phone_desc_text'.tr;
                        pairsController.textInputType = TextInputType.phone;
                        pairsController.maskFormatter = MaskTextInputFormatter(mask: '### ###-##-##');
                        pairsController.chain = generateTelNumbers(total);
                      } else if(index == 6) {
                        pairsController.formHintText = 'car_number_hint'.tr;
                        pairsController.chain = generateCarNumbers(total);
                        pairsController.textInputType = TextInputType.visiblePassword;
                        pairsController.telCarText = 'car_desc_text'.tr;
                      } else if(index == 7) {
                        pairsController.formHintText = 'password_hint'.tr;
                        pairsController.chain = generatePasswords(total);
                        pairsController.textInputType = TextInputType.visiblePassword;
                        pairsController.telCarText = 'password_desc_text'.tr;
                        pairsController.maxSecondsCheck = 60;
                        pairsController.isPasswordPractical = true;
                      }
                    }


                    int len = 0;
                    if(pairsController.isLastSet) {
                      len = 1;
                    } else {
                      len = pairsController.maxArrayInterval - 1;
                    }

                    pairsController.chains = List.generate(len, (index) => []);

                    for(int i = 0, k = 0; i < len; i++) {
                      if(pairsController.countMinusOfLastPass != 0 && i == (pairsController.maxArrayInterval - 2)) {
                        for(int j = 0; j < pairsController.countOfOnePass - pairsController.countMinusOfLastPass; j++) {
                          pairsController.chains[i].add(pairsController.chain[k]);
                          k++;
                        }
                      } else {
                        for(int j = 0; j < pairsController.countOfOnePass; j++) {
                          pairsController.chains[i].add(pairsController.chain[k]);
                          k++;
                        }
                      }

                      pairsController.chainsToFix.add(ChainToFix(chain: pairsController.chains[i]));
                    }
                  }

                  pairsController.nextPageStart = const PracticalPairsStart();
                  pairsController.nextPageCheck = const PracticalPairsCheck();

                  Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft);

                }
            ),
          ],
        ),
      ),
    );
  }

  _buildCustomCheckBoxListTile(text, index) => Obx( () {
    final CheckBoxListController checkBoxListController = Get.find();
    return Theme(
      data: ThemeData().copyWith(unselectedWidgetColor: Colors.black),
      child: CheckboxListTile(
        contentPadding: EdgeInsets.zero,
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: kblue,
        value:  checkBoxListController.isCheckedValues[index].value,
        onChanged: index == 2 && !GetStorage().read('isPr') ? null : (isChecked) => checkBoxListController.isCheckedValues[index].value = !checkBoxListController.isCheckedValues[index].value,
        title: Text(
          text,
          style: TextStyle(
            decoration: index == 2 && !GetStorage().read('isPr') ? TextDecoration.lineThrough : null,
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: checkBoxListController.isCheckedValues[index].value ? kblue : Colors.black,
          ),
        ),
      ),
    );
  },
  );
}



class CustomSliderWidget extends StatelessWidget {
  const CustomSliderWidget({
    Key? key,
    required this.index,
    required this.subtitle,
    required this.min,
    required this.max,
    required this.divisions,
    required this.tileIndex,
  }) : super(key: key);

  final int index;
  final String subtitle;
  final double min;
  final double max;
  final int divisions;
  final int tileIndex;

  @override
  Widget build(BuildContext context) {


    final SliderController sliderController = Get.find<SliderController>();

    return SliderTheme(
        data: SliderThemeData(
            activeTickMarkColor: kblue,
            inactiveTickMarkColor: Colors.transparent,
            activeTrackColor: kblue,
            inactiveTrackColor: kblue.withOpacity(0.2),
            thumbColor: kblue,
            overlayColor: kblue.withOpacity(0.2)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => RichText(
              text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: '$subtitle: '),
                    TextSpan(text: '${sliderController.values[index].value.round()}', style: const TextStyle(color: kblue)),
                  ]
              ),
            )),
            sizedBoxLow(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSideLabel(min),
                  buildSideLabel(max)
                ],
              ),
            ),
            Obx( () =>
                Padding(
                  padding: EdgeInsets.zero,
                  child: Slider(
                      value: sliderController.values[index].value,
                      min: min,
                      max: max,
                      divisions: divisions,
                      label: sliderController.values[index].value.round().toString(),
                      onChanged: (value) {
                        if(index == 0) {
                          sliderController.values[0].value = value;
                          if(sliderController.values[0].value < sliderController.values[1].value) {
                            sliderController.values[1].value = value;
                          }
                        } else if(index == 1) {
                          sliderController.values[1].value = value;
                          if(sliderController.values[0].value < sliderController.values[1].value) {

                            sliderController.values[0].value += tileIndex <= 4 ? 10 : 5;
                          }
                        } else if(index == 2) {
                          sliderController.values[index].value = value;
                        }
                      }
                  ),
                ),
            ),
          ],
        )
    );
  }

  Widget buildSideLabel(double value) => Text(
    value.round().toString(),
    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );
}


class SliderController extends GetxController {
  RxList values = RxList<RxDouble>([]);
}

class CheckBoxListController extends GetxController {
  RxList isCheckedValues = RxList<RxBool>([]);
}