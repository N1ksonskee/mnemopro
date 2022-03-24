import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import '../../constants/states.dart';
import '../../controllers/expansion_tile_controller.dart';
import '../../widgets/custom_expansion_info.dart';
import '../../widgets/pb.dart';
import 'exercise_states_chain_info.dart';
import 'exercise_states_destination_info.dart';
import 'exercise_states_number_info.dart';

class ExercisesListStates extends StatelessWidget {
  const ExercisesListStates({Key? key, required this.title}) : super(key: key);
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
            contentText: 'sequence_states_text'.tr,
            leading: box.read('states-dest') ? SvgPicture.asset('assets/okey.svg') : const PB(value: 0),
            onCheckHandler: () {
              final pairsController = Get.put(PairsController(), permanent: true);
              pairsController.clear();
              pairsController.isChainPractical = true;
              pairsController.title = 'sequence_states_title'.tr;
              pairsController.isCheckExercise = true;
              pairsController.isSingleChain = true;
              for(int i = 0; i < States.statesList['data'.tr]!.length; i++) {
                pairsController.chain.addAll(States.statesList['data'.tr]![i]);
              }
              pairsController.isLieList = true;
              pairsController.lieValues.addAll(pairsController.chain);
              pairsController.nextPageResult = const PracticalChainResult();
              Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
            },
            onLearnHandler: () => Get.off(ExerciseStatesChainInfo(title: 'sequence_states_title'.tr), transition: Transition.rightToLeft)
          ),
          sizedBoxHigh(),
          box.read('states-dest') ? CustomExpansionInfo(
            title: 'location'.tr,
            expansionTileIndex: 1,
            contentText: 'location_states_text'.tr,
            leading: box.read('states-dest-done') ? SvgPicture.asset('assets/okey.svg') : const PB(value: 0),
            onCheckHandler: () {
              final PairsController pairsController = Get.put(PairsController(), permanent: true);
              pairsController.clear();
              pairsController.isOnlyOneValueInCheck = true;
              pairsController.title = 'location_states_title'.tr;
              pairsController.maxSecondsCheck = 20;
              pairsController.isLastSet = true;
              pairsController.isSmallSizePB = true;
              pairsController.isSmallPicturePractical = true;
              pairsController.isExpandableImage = true;
              pairsController.isFlagsPractical = true;
              pairsController.nextPageResult = const PracticalPairsResult();
              pairsController.isCheckExercise = true;

              final List<List<String>> states = States.statesList['data'.tr]!;

              for(int i = 0, k = 0; i < states.length; i++) {
                for(int j = 0; j < states[i].length; j++) {
                  pairsController.pairs.add([states[i][j], 'assets/states/states_${++k}.svg']);
                }
              }

              Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
            },
            onLearnHandler: () => Get.off(ExerciseStatesDestinationInfo(title: 'location_states_title'.tr), transition: Transition.rightToLeft)

          ) : CustomTileDisabled(
            title: 'location'.tr,
            dialogWidgetText: [
              TextSpan(text: 'to_open_exercise_you_memorize'.tr),
              TextSpan(text: 'sequence'.tr, style: const TextStyle(color: kred)),
            ]
          ),
          sizedBoxHigh(),
          box.read('states-number') ? CustomExpansionInfo(
            title: 'joining_order'.tr,
            expansionTileIndex: 2,
            contentText: 'order_states_text'.tr,
            leading: box.read('states-number-done') ? SvgPicture.asset('assets/okey.svg') : const PB(value: 0),
            onCheckHandler: () {
              final PairsController pairsController = Get.put(PairsController(), permanent: true);
              pairsController.clear();
              pairsController.isOnlyOneValueInCheck = true;
              pairsController.title = 'order_states_title'.tr;
              pairsController.pairsContainsNumbers = true;
              pairsController.isCheckExercise = true;
              pairsController.isLastSet = true;

              pairsController.nextPageCheck = const PracticalPairsCheck();
              pairsController.nextPageResult = const PracticalPairsResult();
              pairsController.pairs.addAll(States.statesNumberList['data'.tr]!);

              Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
            },
            onLearnHandler: () => Get.off(ExerciseStatesNumberInfo(title: 'order_states_title'.tr), transition: Transition.rightToLeft)
          ) : CustomTileDisabled(
            title: 'joining_order'.tr,
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














