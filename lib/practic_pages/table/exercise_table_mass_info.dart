import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/table.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class ExerciseTableMassInfo extends StatelessWidget {
  const ExerciseTableMassInfo({Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.isOnlyOneValueInCheck = true;
    pairsController.title = title;
    pairsController.maxSecondsStart = 30;
    pairsController.maxArrayInterval = 13;
    pairsController.pairsContainsNumbers = true;
    pairsController.countMinusOfLastPass = 2;
    pairsController.practicalKey = 'table-mass';

    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalPairsResult();
    pairsController.enableStatistics = GetStorage().read('table-mass-done') ? false : true;


    pairsController.pairs = List.generate(118, (_) => []);

    for(int i = 0; i < 118; i++) {
      pairsController.pairs[i].add(TableM.tableElementsMassList[i]);
      pairsController.pairs[i].add('${TableM.tableElementsSignsList[i]} (${TableM.elements['data'.tr]![i]})');
    }


    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true),
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
                'table_mass_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'table_mass_2'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'table_mass_3'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'table_mass_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'table_mass_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                children: [
                  Text(
                    'exec_time'.tr,
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
                    children:[
                      TextSpan(text: 'table_mass_6'.tr),
                      TextSpan(text: 'table_mass_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'start'.tr,
                  color: kblue,
                  handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
              )
            ],
          ),
        )
      ]
  );
}



