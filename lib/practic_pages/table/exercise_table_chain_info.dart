import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/table.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';


class ExerciseTableChainInfo extends StatelessWidget {
  const ExerciseTableChainInfo({Key? key,
    required this.title,
  }) : super(key: key);


  final String title;


  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.maxArrayInterval = 10;
    pairsController.maxSecondsStart = 40;
    pairsController.title = title;
    pairsController.isChainPractical = true;
    pairsController.isLieList = true;
    pairsController.isCustomReferenceList = true;
    pairsController.practicalKey = 'table';
    pairsController.enableStatistics = GetStorage().read('table-number') ? false : true;
    pairsController.isCodesExist = true;
    pairsController.codesList.addAll(TableM.codesList['data'.tr]!);

    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalChainResult();

    final Map<String, String> refView = {
      'en': 'reference view',
      'ru': 'опорный образ',
    };


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
        pairsController.referencesList.add('${i+1} ${refView['data'.tr]}');
      }
    }

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(
          title, style: Get.textTheme.headline1, maxLines: 2,),
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
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: [
                      TextSpan(text: 'table_seq_1'.tr),
                      TextSpan(text: 'table_seq_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
             Text(
               'table_seq_3'.tr,
               style: Get.textTheme.bodyText1,
             ),
              sizedBoxLow(),
              Text(
                'table_seq_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'table_seq_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const SizedBox(height: 200,child: ExpansionImage(path: 'assets/table_full.svg', isSvg: true,)),
              sizedBoxHigh(),
              sizedBoxHigh(),
              Text(
                'table_seq_6'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              Text(
                'table_seq_7'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'table_seq_8'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const SizedBox(height: 200,child: ExpansionImage(path: 'assets/table_struct.svg', isSvg: true,)),
              sizedBoxHigh(),
              sizedBoxHigh(),
              Text(
                'table_seq_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'table_seq_10'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'table_seq_11'.tr,
                style: Get.textTheme.bodyText1,
              ),
            sizedBoxHigh(),
              Row(
                children: [
                  Text(
                    'table_seq_12'.tr,
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
                    children: [
                      TextSpan(text: 'table_seq_13'.tr),
                      TextSpan(text: 'table_seq_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
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



