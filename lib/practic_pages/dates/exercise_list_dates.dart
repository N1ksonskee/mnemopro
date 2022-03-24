import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/dates.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import 'package:practical_mnemonic/widgets/pb.dart';
import '../../controllers/expansion_tile_controller.dart';
import '../../widgets/custom_expansion_info.dart';
import 'exercise_dates_list.dart';

class ExerciseListDates extends StatelessWidget {
  const ExerciseListDates({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {

    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());
    for(int i = 0; i < 2; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    int datesInvCount = 0;
    int datesWorldCount = 0;

    final box = GetStorage();

    for(int i = 1; i <= 3; i++) {
      if(box.read('dates-inv-$i')) datesInvCount++;
      if(box.read('dates-world-$i')) datesWorldCount++;
    }
    if(box.read('dates-inv-done')) datesInvCount++;
    if(box.read('dates-world-done')) datesWorldCount++;

    double datesInvProgress = datesInvCount / 4;
    double datesWorldProgress = datesWorldCount / 4;

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
              title: 'inventions'.tr,
              expansionTileIndex: 0,
              contentText: 'inventions_text'.tr,
              leading: box.read('dates-inv-done') ? SvgPicture.asset('assets/okey.svg') : PB(value: datesInvProgress),
              onCheckHandler: () {
                final pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.title = 'inventions'.tr;
                pairsController.isSmallTitle = true;
                pairsController.isSmallOptionsText = true;
                pairsController.isToggleNumbers = true;
                pairsController.isCheckExercise = true;
                pairsController.isLastSet = true;
                pairsController.isRepeatPairValue = true;

                for(int i = 0; i < Dates.datesInventory['data'.tr]!.length; i++) {
                  pairsController.pairs.addAll(Dates.datesInventory['data'.tr]![i]);
                }

                pairsController.nextPageCheck = const PracticalPairsCheck();
                pairsController.nextPageResult = const PracticalPairsResult();

                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(ExerciseDatesList(title: 'inventions'.tr), transition: Transition.rightToLeft);
              }
          ),
          sizedBoxHigh(),
          CustomExpansionInfo(
              title: 'world_history'.tr,
              expansionTileIndex: 1,
              contentText: 'world_history_text'.tr,
              leading: box.read('dates-world-done') ? SvgPicture.asset('assets/okey.svg') : PB(value: datesWorldProgress),
              onCheckHandler: () {
                final pairsController = Get.put(PairsController(), permanent: true);
                pairsController.clear();
                pairsController.title = 'world_history'.tr;
                pairsController.isSmallTitle = true;
                pairsController.isSmallOptionsText = true;
                pairsController.isCheckExercise = true;
                pairsController.isLastSet = true;
                pairsController.isRepeatPairValue = true;
                pairsController.isLongOneValue = true;
                pairsController.isOnlyOneValueInCheck = true;
                pairsController.pairsContainsNumbers = true;

                pairsController.pairs.addAll(Dates.datesWorld['data'.tr]!);

                pairsController.nextPageCheck = const PracticalPairsCheck();
                pairsController.nextPageResult = const PracticalPairsResult();

                Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
              },
              onLearnHandler: () {
                Get.off(ExerciseDatesList(title: 'world_history'.tr, isWorld: true), transition: Transition.rightToLeft);
              }
          ),
        ],
      ),
    );
  }
}

