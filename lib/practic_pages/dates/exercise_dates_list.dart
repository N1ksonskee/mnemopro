import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/dates.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import 'package:practical_mnemonic/widgets/show_progress_dialog.dart';
import '../../widgets/practical_tile.dart';
import 'exercise_dates_inv_info.dart';
import 'exercise_dates_world_info.dart';

class ExerciseDatesList extends StatelessWidget {
  const ExerciseDatesList({
    Key? key,
    required this.title,
    this.isWorld = false,

  }) : super(key: key);

  final String title;
  final bool isWorld;


  @override
  Widget build(BuildContext context) {


    final Map<String, List<String>> titlesInv = {
      'en': [
        '1-60 dates',
        '60-120 dates',
        '120-180 dates',
      ],
      'ru': [
        '1-60 дат',
        '60-120 дат',
        '120-180 дат',
      ]
    };

    final Map<String, List<String>> titlesWorld = {
      'en': [
        '1-50 dates',
        '50-100 dates',
        '100-150 dates',
      ],
      'ru': [
        '1-50 дат',
        '50-100 дат',
        '100-150 дат',
      ]
    };

    final box = GetStorage();

    RxBool isLastCheckEnable = false.obs;
    if(isWorld) {
      isLastCheckEnable.value = box.read('dates-inv-4');
      box.listenKey('dates-inv-4', (_) {
        isLastCheckEnable.value = true;
      });
    } else {
      isLastCheckEnable.value = box.read('dates-world-4');
      box.listenKey('dates-world-4', (_) {
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
                handler: () => Get.to(isWorld ? ExerciseDatesWorldInfo(title: title,) : ExerciseDatesInvInfo(title: title,), transition: Transition.rightToLeft),
                title: 'info'.tr,
                iconData: Icons.info
            ),
            Center(child: Container(height: 50, width: 1, color: Colors.black)),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  RxBool isEnable = false.obs;
                  if(isWorld) {
                    isEnable.value = box.read('dates-world-${i+1}');
                    box.listenKey('dates-world-${i+1}', (_) {
                      isEnable.value = true;
                    });
                  } else {
                    isEnable.value = box.read('dates-inv-${i + 1}');
                    box.listenKey('dates-inv-${i + 1}', (_) {
                      isEnable.value = true;
                    });
                  }

                  return Obx(() =>
                    _buildExerciseElement(
                      title: isWorld ? titlesWorld['data'.tr]![i] : titlesInv['data'.tr]![i],
                      index: i,
                      isWorld: isWorld,
                      isBlocked: !isEnable.value
                    ),
                  );
                },
                separatorBuilder: (_, i) => Center(child: Container(height: 50, width: 1, color: Colors.black)),
                itemCount: titlesInv['data'.tr]!.length
            ),
            Center(child: Container(height: 50, width: 1, color: Colors.black)),
             Obx(() => isLastCheckEnable.value ? PracticalTile(
                handler: () {
                  final pairsController = Get.put(PairsController(), permanent: true);
                  pairsController.clear();
                  pairsController.title = title;
                  pairsController.isSmallTitle = true;
                  pairsController.isSmallOptionsText = true;
                  pairsController.isLongPairsChain = true;
                  pairsController.isRepeatPairValue = true;
                  pairsController.isLastSet = true;


                  if(isWorld) {
                    pairsController.isLongOneValue = true;
                    pairsController.isOnlyOneValueInCheck = true;
                    pairsController.pairsContainsNumbers = true;
                    pairsController.pairs.addAll(Dates.datesWorld['data'.tr]!);
                    pairsController.practicalKey = 'dates-world-4';
                  } else {
                    pairsController.isToggleNumbers = true;
                    for(int i = 0; i < Dates.datesInventory['data'.tr]!.length; i++) {
                      pairsController.pairs.addAll(Dates.datesInventory['data'.tr]![i]);
                    }
                    pairsController.practicalKey = 'dates-inv-4';
                  }


                  pairsController.nextPageCheck = const PracticalPairsCheck();
                  pairsController.nextPageResult = const PracticalPairsResult();

                  Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft);
                },
                title: 'full_check'.tr ,
                iconData: Icons.fact_check
              ) : CustomTileDisabled(
                 title: 'full_check'.tr,
                 dialogWidgetText: [
                   TextSpan(text: 'final_check_lock_text'.tr),
                 ]
             ),
           ),
          ],
        ),
      ),
    );
  }




  Widget _buildExerciseElement({
    required String title,
    required index,
    required isWorld,
    isBlocked = false,
  }) => Stack(
    alignment: Alignment.center,
    clipBehavior: Clip.none,
    children: [
      GestureDetector(
        onTap: isBlocked ? () => showProgressDialog(index) : ()  {
          final pairsController = Get.put(PairsController(), permanent: true);
          pairsController.clear();
          pairsController.title = title;
          pairsController.isSmallTitle = true;
          pairsController.isSmallOptionsText = true;

          if(isWorld) {
            pairsController.isLongOneValue = true;
            pairsController.isOnlyOneValueInCheck = true;
            pairsController.pairsContainsNumbers = true;
            pairsController.maxSecondsStart = 90;
            pairsController.maxArrayInterval = 6;
            pairsController.isRepeatPairValue = true;
            pairsController.practicalKey = 'dates-inv-${index + 1}';
            pairsController.enableStatistics = GetStorage().read('dates-inv-${index + 2}') ? false : true;

            pairsController.pairs.addAll(Dates.datesWorld['data'.tr]!.getRange(index * 50, (index + 1) * 50));
            if(index == 0 || index == 1) {
              pairsController.maxDescriptionArrayInterval = 5;
              pairsController.descriptionList.addAll(Dates.descriptionDatesWorld['data'.tr]!.getRange(index * 50, (index + 1) * 50));
            }
          } else {
            pairsController.isToggleNumbers = true;
            pairsController.maxSecondsStart = 40;
            pairsController.maxArrayInterval = 7;
            pairsController.pairs.addAll(Dates.datesInventory['data'.tr]![index]);
            pairsController.practicalKey = 'dates-world-${index + 1}';
            pairsController.enableStatistics = GetStorage().read('dates-world-${index + 2}') ? false : true;

          }

          pairsController.nextPageStart = const PracticalPairsStart();
          pairsController.nextPageCheck = const PracticalPairsCheck();
          pairsController.nextPageResult = const PracticalPairsResult();

          Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft);

        },
        child: Container(
          width: 230,
          height: 70,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: isBlocked ? const Color(0xffe0e0e0) : Colors.white,
            borderRadius: BorderRadius.circular(20),

          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isBlocked ? const Icon(Icons.lock, color: Colors.black, size: 30,) : Text(
                '${index + 1}',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: kblue),
              ),
              Text(
                title,
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
              ),
            ],
          ),
        ),
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
      Positioned(
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


