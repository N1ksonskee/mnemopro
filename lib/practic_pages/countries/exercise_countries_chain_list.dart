import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/world.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practic_pages/countries/exercise_countries_capital_info.dart';
import 'package:practical_mnemonic/practic_pages/countries/exercise_countries_chain_info.dart';
import 'package:practical_mnemonic/practic_pages/countries/exercise_countries_destination_info.dart';
import 'package:practical_mnemonic/practic_pages/countries/exercise_flags_info.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import 'package:practical_mnemonic/widgets/show_progress_dialog.dart';
import '../../widgets/practical_tile.dart';

class ExerciseCountriesChainList extends StatelessWidget {
  const ExerciseCountriesChainList({
    Key? key,
    required this.title,
    this.isCodesExercise = false,
    this.isDestinationExercise = false,
    this.isFlagExercise = false,
  }) : super(key: key);

  final String title;
  final bool isCodesExercise;
  final bool isDestinationExercise;
  final bool isFlagExercise;

  @override
  Widget build(BuildContext context) {


    final Map<String, List<String>> titles = {
      'en': [
        'South America',
        'North America',
        'Europe',
        'Asia',
        'Australia and Oceania',
        'Africa',
      ],
      'ru': [
        'Южная Америка',
        'Северная Америка',
        'Европа',
        'Азия',
        'Австралия и Океания',
        'Африка',
      ]
    };

    final box = GetStorage();

    RxBool isLastCheckEnable = false.obs;
    if(isCodesExercise) {
      isLastCheckEnable.value = box.read('world-capital-7');
      box.listenKey('world-capital-7', (_) {
        isLastCheckEnable.value = true;
      });
    } else if(isDestinationExercise) {
      isLastCheckEnable.value = box.read('world-dest-6');
      box.listenKey('world-dest-6', (_) {
        isLastCheckEnable.value = true;
      });
    } else if(isFlagExercise) {
      isLastCheckEnable.value = box.read('flags-7');
      box.listenKey('flags-7', (_) {
        isLastCheckEnable.value = true;
      });
    } else {
      isLastCheckEnable.value = box.read('world-7');
      box.listenKey('world-7', (_) {
        isLastCheckEnable.value = true;
      });
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1!.copyWith(fontSize: 20)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            PracticalTile(
                handler: () => Get.to(
                  isCodesExercise
                      ? ExerciseCountriesCapitalInfo(title: title)
                      : isDestinationExercise
                          ? ExerciseCountriesDestinationInfo(title: title)
                          : isFlagExercise
                              ? ExerciseFlagsInfo(title: title)
                              : ExerciseCountriesChainInfo(title: title,),
                  transition: Transition.rightToLeft),
                title: 'info'.tr,
                iconData: Icons.info
            ),
            Center(child: Container(height: 50, width: 1, color: Colors.black)),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  RxBool isEnable = false.obs;
                  if(isCodesExercise) {
                    isEnable.value = box.read('world-capital-${i + 1}');
                    box.listenKey('world-capital-${i + 1}', (_) {
                      isEnable.value = true;
                    });
                  } else if(isDestinationExercise) {
                    isEnable.value = box.read('world-dest-${i + 1}');
                    box.listenKey('world-dest-${i + 1}', (_) {
                      isEnable.value = true;
                    });
                  } else if(isFlagExercise) {
                    isEnable.value = box.read('flags-${i + 1}');
                    box.listenKey('flags-${i + 1}', (_) {
                      isEnable.value = true;
                    });
                  } else {
                    isEnable.value = box.read('world-${i + 1}');
                    box.listenKey('world-${i + 1}', (_) {
                      isEnable.value = true;
                    });
                  }

                  return Obx(() =>
                    _buildExerciseElement(
                      title: titles['data'.tr]![i],
                      iconPath: 'assets/countries/countries_icon_$i.svg',
                      index: i,
                      isCodesExercise: isCodesExercise,
                      isDestinationExercise: isDestinationExercise,
                      isFlagExercise: isFlagExercise,
                      isBlocked: !isEnable.value
                    ),
                  );
                },
                separatorBuilder: (_, i) => Center(child: Container(height: 50, width: 1, color: Colors.black)),
                itemCount: titles['data'.tr]!.length
            ),
            isDestinationExercise ? Container() : Center(child: Container(height: 50, width: 1, color: Colors.black)),
            isDestinationExercise ? Container() : Obx(() => isLastCheckEnable.value ? PracticalTile(
                handler: () {
                  final pairsController = Get.put(PairsController(), permanent: true);
                  pairsController.clear();

                  if(isFlagExercise) {
                    pairsController.title = 'full_check_flags'.tr;
                    pairsController.isLastSet = true;
                    pairsController.isLongPairsChain = true;
                    pairsController.isExpandableImage = true;
                    pairsController.isSmallPicturePractical = true;
                    pairsController.isSmallSizePB = true;
                    pairsController.isFlagsPractical = true;
                    pairsController.isOnlyOneValueInCheck = true;
                    pairsController.practicalKey = 'flags-7';

                    for(int i = 0; i < World.countries['data'.tr]!.length; i++) {
                      for(int j = 0; j < World.countries['data'.tr]![i].length; j++) {
                        pairsController.pairs.add([ World.countries['data'.tr]![i][j], World.countriesFlagList[i][j]]);
                      }
                    }

                    pairsController.nextPageResult = const PracticalPairsResult();

                  } else if(isCodesExercise) {
                    pairsController.title = 'full_check_capitals'.tr;
                    pairsController.isLastSet = true;
                    pairsController.isLongPairsChain = true;
                    pairsController.isSmallTitle = true;
                    pairsController.isSmallOptionsText = true;
                    pairsController.practicalKey = 'world-capital-7';

                    for(int i = 0; i < World.countriesCapitalList['data'.tr]!.length; i++) {
                       for(int j = 0; j < World.countriesCapitalList['data'.tr]![i].length; j++) {
                         pairsController.pairs.add([World.countriesCapitalList['data'.tr]![i][j], World.countries['data'.tr]![i][j]]);
                       }
                    }

                    pairsController.nextPageResult = const PracticalPairsResult();

                  } else {
                    pairsController.title = 'full_check_countries'.tr;
                    pairsController.isChainPractical = true;
                    pairsController.isLastSet = true;
                    pairsController.isCustomReferenceList = true;
                    pairsController.isSmallPicturePractical = true;
                    pairsController.isExpandableImage = true;
                    pairsController.isSmallSizePB = true;
                    pairsController.practicalKey = 'world-7';

                    for(int i = 0; i < World.countriesIcons.length; i++) {
                      pairsController.paths.addAll(World.countriesIcons[i]);
                    }

                    for(int i = 0; i < World.countries['data'.tr]!.length; i++) {
                      pairsController.chains.add(World.countries['data'.tr]![i]);
                    }

                    for(int i = 0; i < pairsController.chains.length; i++) {
                      pairsController.chainsToFix.add(
                          ChainToFix(chain: pairsController.chains[i])
                      );

                      for(int j = 0; j < pairsController.chains[i].length; j++) {
                        pairsController.chain.add(pairsController.chains[i][j]);
                        pairsController.lieValues.add(pairsController.chains[i][j]);
                      }
                    }

                    pairsController.referencesList.addAll(titles['data'.tr]!);
                    pairsController.isLieList = true;

                    pairsController.nextPageResult = const PracticalChainResult();
                  }

                  pairsController.nextPageStart = const PracticalPairsStart();
                  pairsController.nextPageCheck = const PracticalPairsCheck();

                  Get.to(const PracticalPairsCheck(), transition: Transition.rightToLeft);
                },
                title: 'full_check'.tr,
                iconData: Icons.fact_check
            ) : CustomTileDisabled(
                title: 'full_check'.tr,
                dialogWidgetText: [
                  TextSpan(text: 'final_check_lock_text'.tr),
                ]
            ),)
          ],
        ),
      ),
    );
  }


  Widget _buildExerciseElement({
    required String title,
    required String iconPath,
    required index,
    required isCodesExercise,
    required isDestinationExercise,
    required isFlagExercise,
    isBlocked = false,
  }) => Stack(
    alignment: Alignment.center,
    clipBehavior: Clip.none,
    children: [
      ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        leading: SizedBox(width: 45, height: 45,child: isBlocked ? const Icon(Icons.lock, color: Colors.black, size: 30,) : SvgPicture.asset(iconPath)),
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        title:  Text(title, style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),),
        tileColor: isBlocked ? const Color(0xffe0e0e0) : Colors.white,
        onTap: isBlocked ? () => showProgressDialog(index) : () {
          final pairsController = Get.put(PairsController(), permanent: true);
          pairsController.clear();
          pairsController.title = title;

          if(isFlagExercise) {
            pairsController.maxSecondsStart = 40;
            pairsController.isExpandableImage = true;
            pairsController.isSmallPicturePractical = true;
            pairsController.isSmallSizePB = true;
            pairsController.isFlagsPractical = true;
            pairsController.isOnlyOneValueInCheck = true;
            for(int i = 0; i < World.countries['data'.tr]![index].length; i++) {
              pairsController.pairs.add([World.countries['data'.tr]![index][i], World.countriesFlagList[index][i]]);
            }

            if(index == 0 || index == 4) {
              pairsController.isLastSet = true;
            } else if(index == 1) {
              pairsController.maxArrayInterval = 3;
              pairsController.countOfOnePass = 13;

            } else if(index == 2) {
              pairsController.maxArrayInterval = 5;
              pairsController.countOfOnePass = 11;

            } else if(index == 3) {
              pairsController.maxArrayInterval = 5;
              pairsController.countOfOnePass = 18;

            } else if(index == 5) {
              pairsController.maxArrayInterval = 6;
              pairsController.countOfOnePass = 14;
            }

            pairsController.practicalKey = 'flags-${index+1}';
            pairsController.enableStatistics = GetStorage().read('flags-${index + 2}') ? false : true;

            pairsController.nextPageStart = const PracticalPairsStart();
            pairsController.nextPageCheck = const PracticalPairsCheck();
            pairsController.nextPageResult = const PracticalPairsResult();

            Get.to(const PracticalPairsStart(), transition: Transition.rightToLeft);

          } else if(isCodesExercise) {
            pairsController.maxSecondsStart = 30;
            pairsController.isSmallTitle = true;
            pairsController.isSmallOptionsText = true;

            for(int i = 0; i < World.countriesCapitalList['data'.tr]![index].length; i++) {
              pairsController.pairs.add([World.countriesCapitalList['data'.tr]![index][i], World.countries['data'.tr]![index][i]]);
            }

            pairsController.practicalKey = 'world-capital-${index+1}';
            pairsController.enableStatistics = GetStorage().read('world-capital-${index + 2}') ? false : true;

            if(index == 0 || index == 4) {
              pairsController.isLastSet = true;
            } else if(index == 1) {
              pairsController.maxArrayInterval = 3;
              pairsController.countOfOnePass = 13;

            } else if(index == 2) {
              pairsController.maxArrayInterval = 5;
              pairsController.countOfOnePass = 11;

            } else if(index == 3) {
              pairsController.maxArrayInterval = 5;
              pairsController.countOfOnePass = 18;

            } else if(index == 5) {
              pairsController.maxArrayInterval = 6;
              pairsController.countOfOnePass = 14;
            }

            pairsController.nextPageStart = const PracticalPairsStart();
            pairsController.nextPageCheck = const PracticalPairsCheck();
            pairsController.nextPageResult = const PracticalPairsResult();

            Get.to(const PracticalPairsStart(), transition: Transition.rightToLeft);

            pairsController.nextPageResult = const PracticalPairsResult();
          } else if(isDestinationExercise) {
            pairsController.isOnlyOneValueInCheck = true;
            pairsController.maxSecondsCheck = 20;
            pairsController.isLastSet = true;
            pairsController.isSmallSizePB = true;
            pairsController.isSmallPicturePractical = true;
            pairsController.isExpandableImage = true;
            pairsController.isFlagsPractical = true;
            pairsController.practicalKey = 'world-dest-${index+1}';
            if(index == 5) {
              pairsController.enableStatistics = GetStorage().read('world-dest-done') ? false : true;
            } else {
              pairsController.enableStatistics = GetStorage().read('world-dest-${index + 2}') ? false : true;
            }

            for(int i = 0; i < World.countriesDestinationList[index].length; i++) {
              pairsController.pairs.add([World.countries['data'.tr]![index][i] , World.countriesDestinationList[index][i]]);
            }

            pairsController.nextPageCheck = const PracticalPairsCheck();
            pairsController.nextPageResult = const PracticalPairsResult();
            Get.to(const PracticalPairsCheck(), transition: Transition.rightToLeft);
          } else {
            pairsController.isSmallSizePB = true;
            pairsController.isSmallPicturePractical = true;
            pairsController.maxSecondsStart = 40;
            pairsController.isExpandableImage = true;
            pairsController.isChainPractical = true;
            pairsController.isLieList = true;
            pairsController.practicalKey = 'world-${index+1}';
            pairsController.isCodesExist = true; // todo !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            pairsController.enableStatistics = GetStorage().read('world-${index + 2}') ? false : true;


            pairsController.codesList.addAll(World.codesCountriesList['data'.tr]![index]);


            if(index == 0 || index == 4) {
              pairsController.isSingleChain = true;
              pairsController.countOfOnePass = World.countries['data'.tr]![index].length;

            } else if(index == 1) {
              pairsController.maxArrayInterval = 3;

              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(0, 11).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(11, 26).toList()));

              pairsController.chains.add(World.countries['data'.tr]![index].getRange(0, 11).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(11, 26).toList());

            } else if(index == 2) {
              pairsController.maxArrayInterval = 5;

              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(0, 11).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(11, 21).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(21, 30).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(30, 44).toList()));

              pairsController.chains.add(World.countries['data'.tr]![index].getRange(0, 11).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(11, 21).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(21, 30).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(30, 44).toList());
            } else if(index == 3) {
              pairsController.maxArrayInterval = 5;

              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(0, 16).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(16, 29).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(29, 42).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(42, 54).toList()));

              pairsController.chains.add(World.countries['data'.tr]![index].getRange(0, 16).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(16, 29).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(29, 42).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(42, 54).toList());
            } else if(index == 5) {
              pairsController.maxArrayInterval = 6;

              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(0, 9).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(9, 18).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(18, 32).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(32, 40).toList()));
              pairsController.chainsToFix.add(ChainToFix(chain: World.countries['data'.tr]![index].getRange(40, 56).toList()));

              pairsController.chains.add(World.countries['data'.tr]![index].getRange(0, 9).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(9, 18).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(18, 32).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(32, 40).toList());
              pairsController.chains.add(World.countries['data'.tr]![index].getRange(40, 56).toList());
            }

            pairsController.chain.addAll(World.countries['data'.tr]![index]);
            pairsController.lieValues.addAll(pairsController.chain);
            pairsController.paths.addAll(World.countriesIcons[index]);

            pairsController.nextPageResult = const PracticalChainResult();
            pairsController.nextPageStart = const PracticalPairsStart();
            pairsController.nextPageCheck = const PracticalPairsCheck();

            Get.to(const PracticalPairsStart(), transition: Transition.rightToLeft);
          }

        },
      ),
      Positioned(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        top: -5,
        left: 0,
        right: 0,
      ),
      isDestinationExercise && index == 5 ? Container() : Positioned(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        bottom: -5,
        left: 0,
        right: 0,
      ),
    ],
  );

}


