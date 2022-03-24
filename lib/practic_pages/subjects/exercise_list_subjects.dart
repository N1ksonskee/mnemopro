import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/data.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import '../../controllers/expansion_tile_controller.dart';
import '../../widgets/custom_expansion_info.dart';
import '../../widgets/pb.dart';
import 'exercise_subjects_chain_list.dart';

class ExerciseListSubjects extends StatelessWidget {
  const ExerciseListSubjects({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());
    for(int i = 0; i < 2; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    int chainCount = 0;
    int numberCount = 0;

    final box = GetStorage();

    for(int i = 1; i <= 9; i++) {
      if(box.read('subjects-$i')) chainCount++;
      if(box.read('subjects-number-$i')) numberCount++;
    }
    if(box.read('subjects-number')) chainCount++;
    if(box.read('subjects-number-10')) numberCount++;

    double chainProgress = chainCount / 10;
    double numberProgress = numberCount / 10;


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
              title: 'Последовательность',
              expansionTileIndex: 0,
              contentText: 'Запомнить все субъекты РФ в определённой последовательности.',
              leading: chainProgress == 1 ? SvgPicture.asset('assets/okey.svg') : PB(value: chainProgress),
              onCheckHandler: () {
                final pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.isChainPractical = true;
                pairsController.title = '85 субъектов РФ';
                pairsController.isCheckExercise = true;
                pairsController.isSmallOptionsText = true;
                pairsController.isSmallTitle = true;
                pairsController.isLastSet = true;
                pairsController.isLieList = true;
                pairsController.isCustomReferenceList = true;

                for(int i = 1; i < Subjects.subjectsIcons.length; i++) {
                  pairsController.paths.addAll(Subjects.subjectsIcons[i]);
                }

                // i == 1 потому что 1 == struct
                for(int i = 1; i < Subjects.subjects.length; i++) {
                  pairsController.chains.add(Subjects.subjects[i]);
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

                pairsController.referencesList.addAll(Subjects.subjects[0]);

                pairsController.nextPageResult = const PracticalChainResult();
                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(const ExerciseSubjectsChainList(title: '85 субъектов РФ'), transition: Transition.rightToLeft);
              }
          ),
          sizedBoxHigh(),
          box.read('subjects-number') ? CustomExpansionInfo(
              title: 'Коды субъектов',
              expansionTileIndex: 1,
              contentText: 'Запомнить коды субъектов от 01 до 99',
              leading: numberProgress == 1 ? SvgPicture.asset('assets/okey.svg') : PB(value: numberProgress),
              onCheckHandler: () {
                final PairsController pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.isOnlyOneValueInCheck = true;
                pairsController.title = title;
                pairsController.pairsContainsNumbers = true;
                pairsController.isCheckExercise = true;
                pairsController.isLastSet = true;
                pairsController.isRepeatPairValue = true;

                pairsController.isSmallTitle = true;
                for(int i = 0; i < Subjects.subjectsNumberList.length; i++) {
                  pairsController.pairs.addAll(Subjects.subjectsNumberList[i]);
                }

                pairsController.nextPageCheck = const PracticalPairsCheck();
                pairsController.nextPageResult = const PracticalPairsResult();

                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.delete<ExpansionTileController>();
                Get.off(const ExerciseSubjectsChainList(title: 'Коды субъектов РФ', isCodesExercise: true), transition: Transition.rightToLeft);
              }
          ) : const CustomTileDisabled(
            title: 'Коды субъектов',
              dialogWidgetText: [
                TextSpan(text: 'Чтобы открыть упражнение вы должны запомнить '),
                TextSpan(text: 'последовательность', style: TextStyle(color: kred)),
              ]
          ),
          sizedBoxHigh(),
        ],
      ),
    );
  }
}



