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
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import 'package:practical_mnemonic/widgets/show_progress_dialog.dart';
import '../../widgets/practical_tile.dart';
import 'exercise_subjects_chain_info.dart';
import 'exercise_subjects_number_info.dart';

class ExerciseSubjectsChainList extends StatelessWidget {
  const ExerciseSubjectsChainList({
    Key? key,
    required this.title,
    this.isCodesExercise = false,
  }) : super(key: key);

  final String title;
  final bool isCodesExercise;

  @override
  Widget build(BuildContext context) {


    final List<String> titles = [
      'Структура',
      'СКФО',
      'ЮФО',
      'ЦФО',
      'СЗФО',
      'ПФО',
      'УФО',
      'СФО',
      'ДФО',
    ];

    final box = GetStorage();

    RxBool isLastCheckEnable = false.obs;
    if(isCodesExercise) {
      isLastCheckEnable.value = box.read('subjects-number-9');
      box.listenKey('subjects-number-9', (_) {
        isLastCheckEnable.value = true;
      });
    } else {
      isLastCheckEnable.value = box.read('subjects-10');
      box.listenKey('subjects-10', (_) {
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
                handler: () => Get.to(isCodesExercise
                    ? ExerciseSubjectsNumberInfo(title: title)
                    : ExerciseSubjectsChainInfo(title: title,),
                    transition: Transition.rightToLeft),
                title: 'Инфо',
                iconData: Icons.info
              ),
              Center(child: Container(height: 50, width: 1, color: Colors.black)),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) {
                  RxBool isEnable = false.obs;
                  if(isCodesExercise && i != 0) {
                    isEnable.value = box.read('subjects-number-$i');
                    box.listenKey('subjects-number-$i', (_) {
                      isEnable.value = true;
                    });
                  } else {
                    isEnable.value = box.read('subjects-${i + 1}');
                    box.listenKey('subjects-${i + 1}', (_) {
                      isEnable.value = true;
                    });
                  }

                  return isCodesExercise && i == 0 ? Container() : Obx(() =>
                   _buildExerciseElement(
                      title: titles[i],
                      iconPath: 'assets/subjects/subjects_icon_$i.svg',
                      index: i,
                      isCodesExercise: isCodesExercise,
                      isBlocked: !isEnable.value
                    ),
                  );
                },
                separatorBuilder: (_, i) => isCodesExercise && i == 0 ? Container() : Center(child: Container(height: 50, width: 1, color: Colors.black)),
                itemCount: titles.length
              ),
              Center(child: Container(height: 50, width: 1, color: Colors.black)),
             Obx(() =>  isLastCheckEnable.value ?  PracticalTile(
                 handler: () {
                   final pairsController = Get.put(PairsController(), permanent: true);
                   pairsController.clear();

                   if(isCodesExercise) {
                     pairsController.isOnlyOneValueInCheck = true;
                     pairsController.title = 'Коды: полная проверка';
                     pairsController.pairsContainsNumbers = true;
                     pairsController.isLastSet = true;
                     pairsController.isRepeatPairValue = true;
                     pairsController.isLongPairsChain = true;
                     pairsController.practicalKey = 'subjects-number-9';

                     pairsController.isSmallTitle = true;
                     for(int i = 0; i < Subjects.subjectsNumberList.length; i++) {
                       pairsController.pairs.addAll(Subjects.subjectsNumberList[i]);
                     }

                     pairsController.nextPageResult = const PracticalPairsResult();

                   } else {
                     pairsController.title = 'Субъекты: полная проверка';
                     pairsController.isChainPractical = true;
                     pairsController.isLastSet = true;
                     pairsController.isCustomReferenceList = true;
                     pairsController.isSmallOptionsText = true;
                     pairsController.isSmallTitle = true;
                     pairsController.isSmallPicturePractical = true;
                     pairsController.isExpandableImage = true;
                     pairsController.isSmallSizePB = true;
                     pairsController.practicalKey = 'subjects-10';

                     for(int i = 1; i < 3; i++) {
                       pairsController.paths.addAll(Subjects.subjectsIcons[i]);
                     }

                     // i == 1 потому что 1 == struct
                     for(int i = 1; i < 3; i++) {
                       pairsController.chains.add(Subjects.subjects[i]);
                     }

                     for(int i = 0; i < 2; i++) {
                       pairsController.chainsToFix.add(
                           ChainToFix(chain: pairsController.chains[i])
                       );

                       for(int j = 0; j < pairsController.chains[i].length; j++) {
                         pairsController.chain.add(pairsController.chains[i][j]);
                         pairsController.lieValues.add(pairsController.chains[i][j]);
                       }
                     }

                     pairsController.referencesList.addAll(Subjects.subjects[0]);
                     pairsController.isLieList = true;


                     pairsController.nextPageResult = const PracticalChainResult();
                   }

                   pairsController.nextPageStart = const PracticalPairsStart();
                   pairsController.nextPageCheck = const PracticalPairsCheck();

                   Get.to(const PracticalPairsCheck(), transition: Transition.rightToLeft);
                 },
                 title: 'Полная проверка' ,
                 iconData: Icons.fact_check
             ) : const CustomTileDisabled(
                 title: 'Полная проверка',
                 dialogWidgetText: [
                   TextSpan(text: 'Чтобы начать финальную проверку пройдите все предыдущие блоки'),
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
    isBlocked = false,
  }) => Stack(
    alignment: Alignment.center,
    clipBehavior: Clip.none,
    children: [
      GestureDetector(
        onTap: isBlocked ? () => showProgressDialog(isCodesExercise ? index - 1 : index) : () {
          final pairsController = Get.put(PairsController());
          pairsController.clear();
          pairsController.title = title;

          if(isCodesExercise) {
            pairsController.isOnlyOneValueInCheck = true;
            pairsController.maxSecondsStart = 30;
            pairsController.pairsContainsNumbers = true;
            pairsController.isLastSet = true;
            pairsController.isRepeatPairValue = true;
            pairsController.isSmallTitle = true;
            pairsController.nextPageResult = const PracticalPairsResult();
            pairsController.pairs.addAll(Subjects.subjectsNumberList[index - 1]);
            pairsController.enableStatistics = GetStorage().read('subjects-number-${index + 1}') ? false : true;
            pairsController.practicalKey = 'subjects-number-$index';

          } else {
            pairsController.isSmallSizePB = true;
            pairsController.isSmallPicturePractical = true;
            pairsController.maxSecondsStart = 40;
            pairsController.isExpandableImage = true;
            pairsController.isChainPractical = true;
            pairsController.isSingleChain = true;
            pairsController.isSmallOptionsText = true;
            pairsController.isSmallTitle = true;
            pairsController.enableStatistics = GetStorage().read('subjects-${index + 2}') ? false : true;

            pairsController.practicalKey = 'subjects-${index+1}';

            pairsController.countOfOnePass = Subjects.subjects[index].length;
            pairsController.chain.addAll(Subjects.subjects[index]);
            pairsController.isLieList = true;
            pairsController.lieValues.addAll(pairsController.chain);
            pairsController.paths.addAll(Subjects.subjectsIcons[index]);
            pairsController.nextPageResult = const PracticalChainResult();
          }

          pairsController.nextPageStart = const PracticalPairsStart();
          pairsController.nextPageCheck = const PracticalPairsCheck();

          Get.to(const PracticalPairsStart(), transition: Transition.rightToLeft);
        },
        child: Container(
          width: 200,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: isBlocked ? const Color(0xffe0e0e0) : Colors.white,
            borderRadius: BorderRadius.circular(20),

          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 45, height: 45,child: isBlocked ? const Icon(Icons.lock, color: Colors.black,) : SvgPicture.asset(iconPath)),
              const SizedBox(width: 8,),
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




