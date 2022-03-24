import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/states.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';

class ExerciseStatesDestinationInfo extends StatelessWidget {
  const ExerciseStatesDestinationInfo({Key? key,
    required this.title,
  }) : super(key: key);


  final String title;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.isOnlyOneValueInCheck = true;
    pairsController.title = title;
    pairsController.maxSecondsCheck = 20;
    pairsController.isLastSet = true;
    pairsController.isSmallSizePB = true;
    pairsController.isSmallPicturePractical = true;
    pairsController.isExpandableImage = true;
    pairsController.isFlagsPractical = true;
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();
    pairsController.practicalKey = 'states-dest';
    pairsController.enableStatistics = GetStorage().read('states-dest-done') ? false : true;

    final List<List<String>> states = States.statesList['data'.tr]!;

    for(int i = 0, k = 0; i < states.length; i++) {
      for(int j = 0; j < states[i].length; j++) {
        pairsController.pairs.add([states[i][j], 'assets/states/states_${++k}.svg']);
      }
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true,),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: _buildBody())
      ,
    );
  }

  Widget _buildBody() => Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'states_dest_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_dest_2'.tr,
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: ExpansionImage(path: 'assets/states/states_begin_end_map.svg', isSvg: true,),),
              sizedBoxHigh(),
              sizedBoxHigh(),
              Text(
                'states_dest_3'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_dest_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_dest_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'states_dest_6'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'states_dest_7'.tr),
                    TextSpan(text: 'states_dest_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'states_dest_9'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'states_dest_10'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_dest_11'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'states_dest_12'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: ExpansionImage(path: 'assets/states/states_clear.svg', isSvg: true,),),
              sizedBoxHigh(),
              sizedBoxHigh(),
              Row(
                children: [
                  Text(
                    'states_dest_13'.tr,
                    style: Get.textTheme.headline2,
                  ),
                  const SizedBox(width: 10,),
                  const Icon(
                      Icons.timer,
                      color: Colors.black,
                      size: 40
                  )
                ],
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'states_dest_14'.tr),
                      TextSpan(text: 'states_dest_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'states_dest_16'.tr),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'states_dest_17'.tr),
                      TextSpan(text: 'states_dest_18'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'start'.tr,
                  color: kblue,
                  handler: () => Get.off(const PracticalPairsCheck(), transition: Transition.rightToLeft)
              )
            ],
          ),
        )
      ]
  );
}



