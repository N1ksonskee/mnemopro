import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/expansion_tile_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_info.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import 'package:practical_mnemonic/widgets/pb.dart';
import '../../constants/world.dart';
import 'exercise_countries_chain_list.dart';

class ExerciseListCountries extends StatelessWidget {
  const ExerciseListCountries({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());
    for(int i = 0; i < 3; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    int chainCount = 0;
    int destCount = 0;
    int capitalCount = 0;

    final box = GetStorage();

    for(int i = 1; i <= 6; i++) {
      if(box.read('world-$i')) chainCount++;
      if(i != 6 && box.read('world-dest-$i')) destCount++;
      if(box.read('world-capital-$i')) capitalCount++;
    }
    if(box.read('world-dest')) chainCount++;
    if(box.read('world-dest-done')) destCount++;
    if(box.read('world-capital-done')) capitalCount++;

    double chainProgress = chainCount / 7;
    double destProgress = destCount / 6;
    double capitalProgress = capitalCount / 7;

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1!.copyWith(fontSize: 20)),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CustomExpansionInfo(
              title: 'sequence'.tr,
              expansionTileIndex: 0,
              contentText: 'sequence_countries_text'.tr,
              leading: chainProgress == 1 ? SvgPicture.asset('assets/okey.svg') : PB(value: chainProgress),
              onCheckHandler: () {
                final pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.isChainPractical = true;
                pairsController.title = 'sequence_countries_title'.tr;
                pairsController.isCheckExercise = true;
                pairsController.isLastSet = true;
                pairsController.isLieList = true;
                pairsController.isCustomReferenceList = true;

                final Map<String, List<String>> referencesList = {
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

                pairsController.referencesList.addAll(referencesList['data'.tr]!);

                pairsController.nextPageResult = const PracticalChainResult();
                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(ExerciseCountriesChainList(title: 'sequence_countries_title'.tr), transition: Transition.rightToLeft);
              }
          ),
          sizedBoxHigh(),
          box.read('world-dest') ? CustomExpansionInfo(
              title: 'location'.tr,
              expansionTileIndex: 1,
              contentText: 'location_countries_text'.tr,
               leading: destProgress == 1 ? SvgPicture.asset('assets/okey.svg') : PB(value: destProgress),
              onCheckHandler: () {
                final PairsController pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.isOnlyOneValueInCheck = true;
                pairsController.title = 'location_countries_title'.tr;
                pairsController.maxSecondsCheck = 20;
                pairsController.isLastSet = true;
                pairsController.isSmallSizePB = true;
                pairsController.isSmallPicturePractical = true;
                pairsController.isExpandableImage = true;
                pairsController.isFlagsPractical = true;
                pairsController.nextPageResult = const PracticalPairsResult();
                pairsController.isCheckExercise = true;

                for(int i = 0; i < World.countriesDestinationList.length; i++) {
                  for(int j = 0; j < World.countriesDestinationList[i].length; j++) {
                    pairsController.pairs.add([World.countries['data'.tr]![i][j], World.countriesDestinationList[i][j]]);
                  }
                }

                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(ExerciseCountriesChainList(title: 'location_countries_title'.tr, isDestinationExercise: true), transition: Transition.rightToLeft);
              }
          ) : CustomTileDisabled(
               title: 'location'.tr,
               dialogWidgetText: [
                 TextSpan(text: 'to_open_exercise_you_memorize'.tr),
                 TextSpan(text: 'sequence'.tr, style: const TextStyle(color: kred)),
               ]
           ),
          sizedBoxHigh(),
          box.read('world-capital') ?  CustomExpansionInfo(
              title: 'capitals'.tr,
              expansionTileIndex: 2,
              contentText: 'capitals_countries_text'.tr,
              leading: capitalProgress == 1 ? SvgPicture.asset('assets/okey.svg') : PB(value: capitalProgress),
              onCheckHandler: () {
                final PairsController pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.title = 'capitals_countries_title'.tr;
                pairsController.isCheckExercise = true;
                pairsController.isLastSet = true;
                pairsController.isSmallOptionsText = true;
                pairsController.isSmallTitle = true;

                for(int i = 0; i < World.countriesCapitalList['data'.tr]!.length; i++) {
                  for(int j = 0; j < World.countriesCapitalList['data'.tr]![i].length; j++) {
                    pairsController.pairs.add([World.countriesCapitalList['data'.tr]![i][j], World.countries['data'.tr]![i][j]]);
                  }
                }

                pairsController.nextPageCheck = const PracticalPairsCheck();
                pairsController.nextPageResult = const PracticalPairsResult();

                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(ExerciseCountriesChainList(title: 'capitals_countries_title'.tr, isCodesExercise: true,), transition: Transition.rightToLeft);
              }
          ) : CustomTileDisabled(
              title: 'capitals'.tr,
              dialogWidgetText: [
                TextSpan(text: 'to_open_exercise_you_memorize'.tr),
                TextSpan(text: 'sequence'.tr, style: const TextStyle(color: kred)),
              ]
          ),
        ],
      ),
    );
  }
}



