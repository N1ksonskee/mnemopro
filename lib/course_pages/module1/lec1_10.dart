import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/controllers/expansion_tile_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_pairs.dart';
import 'package:practical_mnemonic/widgets/expansion_tile_state.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';

import 'lec1_11.dart';

class Lec1_10 extends StatelessWidget {
  const Lec1_10({Key? key, required this.title, this.isFromPractical = false}) : super(key: key);
  final bool isFromPractical;
  final String title;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if(isFromPractical) {
          final shouldClose = await showWarningDialog();
          if(shouldClose) {
            final PairsController pairsController = Get.find<PairsController>();
            pairsController.clear();
            Get.delete<PairsController>();
          }
          return shouldClose ?? false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: kredBG,
        appBar: AppBar(
          backgroundColor: kred,
          title: Text(
            title, style: Get.textTheme.headline1, maxLines: 2,),
          leading: CloseIconButton(isLec: !isFromPractical),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: _buildBody(),
        ),
      ),
    );
  }

  Widget _buildBody() {

    ExpansionTileController expansionTileController = Get.put(ExpansionTileController());
    for(int i = 0; i < 2; i++) {
      expansionTileController.isExpandedList.add(
          ExpansionTileElem(globalKey: GlobalKey<CustomExpansionTileState>())
      );
    }

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         isFromPractical ? _buildPracticalContent() : Container(),
          sizedBoxHigh(),
          Text(
            'lec1_10_1'.tr,
            style: Get.textTheme.headline2,
          ),
          sizedBoxHigh(),
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_10_2'.tr),
                TextSpan(text: 'lec1_10_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
              ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'lec1_10_4'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          Text(
            'lec1_10_5'.tr,
            style: Get.textTheme.headline2,
          ),
          sizedBoxHigh(),
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_10_6'.tr),
                TextSpan(text: 'lec1_10_7'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
              ]
            ),
          ),
          sizedBoxLow(),
          Text(
            'lec1_10_8'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          RichText(
            text: TextSpan(
              style: Get.textTheme.bodyText1,
              children: [
                TextSpan(text: 'lec1_10_9'.tr),
                TextSpan(text: 'lec1_10_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_10_11'.tr),
                TextSpan(text: '7±2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec1_10_12'.tr),
              ]
            ),
          ),
          sizedBoxLow(),
          SvgPicture.asset('assets/miller_number.svg'),
          sizedBoxHigh(),
          Text(
            'lec1_10_13'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_10_14'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'lec1_10_15'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          isFromPractical ? _buildPracticalContentBelow() : CustomButton(
              title: 'next'.tr,
              color: kred,
              handler: () {
                Get.delete<PairsController>();
                Get.off(Lec1_11(title: Headers.theoryHeaders['data'.tr]![0][10]), transition: Transition.rightToLeft);
              }
          )
        ]
    );
  }


  Widget _buildPracticalContent() {
    final PairsController pairsController = Get.find();
    bool isPerfect = pairsController.lieAnswersPairs.isEmpty && pairsController.timesUpPairs.isEmpty;

    return Column(

    children: [
      Text(
        'practical1_1_11'.tr,
        style: Get.textTheme.bodyText1,
      ),
      sizedBoxHigh(),
      isPerfect ? Center(
        child: Column(
          children: [
            Text('practical1_1_12'.tr, style: Get.textTheme.headline2!.copyWith(color: kblue, fontSize: 40)),
            const SizedBox(height: 4,),
            Text(
              'practical1_1_13'.tr,
              style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w300, color: kblue),
            )
          ],
        ),
      ) : Column(
        children: [
          pairsController.lieAnswersPairs.isNotEmpty ? CustomExpansionTilePairs(
            expansionTileIndex: 0,
              color: kred,
              title: 'incorrect'.tr,
              leading: const Icon(
                  Icons.cancel,
                  color: kred,
                  size: 60
              ),
              widgets:
              pairsController.lieAnswersPairs.map((pair) => Container(
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: kred.withOpacity(0.2), width: 1))
                ),
                height: 80,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${pair.firstValue} - ${pair.secondCorrect}',
                      style: Get.textTheme.bodyText1!.copyWith(fontSize: 24),
                    ),
                    RichText(
                      text: TextSpan(
                          style: Get.textTheme.bodyText1!.copyWith(color: kred, fontSize: 16),
                          children: [
                            TextSpan(text: 'your_answer'.tr),
                            TextSpan(text: '${pair.firstValue} - ${pair.secondValue}', style: const TextStyle(fontWeight: FontWeight.bold)),
                          ]
                      ),
                    )
                  ],
                ),
              )).toList()
          ) : Container(),
          pairsController.timesUpPairs.isNotEmpty ? sizedBoxHigh() : Container(),
          pairsController.timesUpPairs.isNotEmpty ? CustomExpansionTilePairs(
            expansionTileIndex: 1,
            color: kgrey,
            title: 'times_up'.tr,
            leading: const Icon(
                Icons.timer,
                color: kgrey,
                size: 60
            ),
            widgets:
            pairsController.timesUpPairs.map((pair) => Container(
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: kgrey.withOpacity(0.2), width: 1))
              ),
              height: 80,
              alignment: Alignment.center,
              child: Text(
                '${pair.firstValue} - ${pair.secondCorrect}',
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 24),
              ),
            )).toList()
          ) : Container(),
        ],
      ),
    ],
  );
  }

  Widget _buildPracticalContentBelow() {
    final PairsController pairsController = Get.find();
    bool isPerfect = pairsController.lieAnswersPairs.isEmpty && pairsController.timesUpPairs.isEmpty;
    if(!isPerfect) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'practical1_1_14'.tr,
            style: Get.textTheme.headline2,
          ),
          sizedBoxHigh(),
          Text(
            'practical1_1_15'.tr,
            style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
          ),
          sizedBoxLow(),
          Text(
            'practical1_1_16'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxLow(),
          Text(
            'practical1_1_17'.tr,
            style: Get.textTheme.bodyText1,
          ),
          sizedBoxHigh(),
          CustomButton(
              title: 'practical1_1_18'.tr,
              color: kblue,
              handler: () {
                pairsController.isCorrection = true;
                Get.off(pairsController.nextPageCheck, transition: Transition.rightToLeft);
              }
          )
        ],
      );
    }
    return CustomButton(
      title: 'finish'.tr,
      color: kblue,
      handler: () {
        if(!GetStorage().read('lec1_10')) {
          AuthService().upgradeStatistics();
          AuthService().upgradeData('lec1_10');
          AuthService().upgradeData('lec1_11');
          AuthService().upgradeData('practical1_2');
        }
        Get.back();
      }
    );
  }
}