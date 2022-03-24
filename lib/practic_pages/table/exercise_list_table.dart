import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/table.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import '../../controllers/expansion_tile_controller.dart';
import '../../widgets/custom_expansion_info.dart';
import '../../widgets/pb.dart';
import 'exercise_table_chain_info.dart';
import 'exercise_table_mass_info.dart';
import 'exercise_table_number_info.dart';

class ExerciseListTable extends StatelessWidget {
  const ExerciseListTable({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());
    for(int i = 0; i < 3; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    final box = GetStorage();


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
              contentText: 'sequence_table_text'.tr,
              leading: box.read('table-number') ? SvgPicture.asset('assets/okey.svg') : const PB(value: 0),
              onCheckHandler: () {
                final pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.isChainPractical = true;
                pairsController.title = 'sequence_table_title'.tr;
                pairsController.isCheckExercise = true;
                pairsController.isLieList = true;
                pairsController.isLastSet = true;
                pairsController.isCustomReferenceList = true;

                for(int i = 0; i < TableM.tableElementsList['data'.tr]!.length; i++) {
                  pairsController.chainsToFix.add(
                      ChainToFix(chain: TableM.tableElementsList['data'.tr]![i])
                  );

                  for(int j = 0; j < TableM.tableElementsList['data'.tr]![i].length; j++) {
                    pairsController.chain.add(TableM.tableElementsList['data'.tr]![i][j]);
                    pairsController.lieValues.add(TableM.tableElementsList['data'.tr]![i][j]);
                  }

                  pairsController.chains.add(TableM.tableElementsList['data'.tr]![i]);

                  if(i == 7) {
                    pairsController.referencesList.add(TableM.tableElementsList['data'.tr]![5][2]);
                  } else if(i == 8) {
                    pairsController.referencesList.add(TableM.tableElementsList['data'.tr]![6][2]);
                  } else {
                    pairsController.referencesList.add('${i+1} опорный образ');
                  }

                }

                pairsController.nextPageResult = const PracticalChainResult();
                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(ExerciseTableChainInfo(title: 'sequence_table_title'.tr), transition: Transition.rightToLeft);
              }
          ),
          sizedBoxHigh(),
          box.read('table-number') ? CustomExpansionInfo(
              title: 'element_numbers'.tr,
              expansionTileIndex: 1,
              contentText: 'elem_table_text'.tr,
              leading: box.read('table-number-done') ? SvgPicture.asset('assets/okey.svg') : const PB(value: 0),
              onCheckHandler: () {
                final PairsController pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.title = 'elem_table_title'.tr;
                pairsController.isOnlyOneValueInCheck = true;
                pairsController.pairsContainsNumbers = true;
                pairsController.isCheckExercise = true;
                pairsController.isLastSet = true;

                pairsController.nextPageCheck = const PracticalPairsCheck();
                pairsController.nextPageResult = const PracticalPairsResult();

                pairsController.pairs = List.generate(118, (_) => []);

                for(int i = 0; i < 118; i++) {
                  pairsController.pairs[i].add('${i + 1}');
                  pairsController.pairs[i].add('${TableM.tableElementsSignsList[i]} (${TableM.tableElementsList['data'.tr]![i]})');
                }

                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(ExerciseTableNumberInfo(title: 'elem_table_title'.tr), transition: Transition.rightToLeft);
              }
          ) : CustomTileDisabled(
            title: 'element_numbers'.tr,
            dialogWidgetText: [
              TextSpan(text: 'to_open_exercise_you_memorize'.tr),
              TextSpan(text: 'sequence'.tr, style: const TextStyle(color: kred)),
            ]
          ),
          sizedBoxHigh(),
          box.read('table-mass') ? CustomExpansionInfo(
              title: 'atom_mass'.tr,
              expansionTileIndex: 2,
              contentText: 'mass_table_text'.tr,
              leading: box.read('table-mass-done') ? SvgPicture.asset('assets/okey.svg') : const PB(value: 0),
              onCheckHandler: () {
                final PairsController pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.title = 'mass_table_title'.tr;
                pairsController.isOnlyOneValueInCheck = true;
                pairsController.pairsContainsNumbers = true;
                pairsController.isCheckExercise = true;
                pairsController.isLastSet = true;


                pairsController.nextPageCheck = const PracticalPairsCheck();
                pairsController.nextPageResult = const PracticalPairsResult();

                pairsController.pairs = List.generate(118, (_) => []);

                for(int i = 0; i < 118; i++) {
                  pairsController.pairs[i].add(TableM.tableElementsMassList[i]);
                  pairsController.pairs[i].add('${TableM.tableElementsSignsList[i]} (${TableM.tableElementsList['data'.tr]![i]})');
                }

                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(ExerciseTableMassInfo(title: 'mass_table_title'.tr), transition: Transition.rightToLeft);
              }
          ) : CustomTileDisabled(
              title: 'atom_mass'.tr,
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

