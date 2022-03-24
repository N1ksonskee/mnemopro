import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/controllers/timer_controller.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_circular_pb.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';

class PracticalStructSelection extends StatelessWidget {
  const PracticalStructSelection({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.find();
    int maxSeconds = 60;
    pairsController.tempSeconds = pairsController.maxSecondsStart;
    pairsController.maxSecondsStart = maxSeconds;
    TimerController timerController = Get.put(TimerController(pairsController.maxSecondsStart));

    return WillPopScope(
      onWillPop: () async {
        final shouldClose = await showWarningDialog();
        return shouldClose ?? false;
      },
      child: Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text(
              pairsController.title, style: Get.textTheme.headline1, maxLines: 2,),
          leading: const CloseIconButton(),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        height: 20,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: LinearProgressIndicator(
                            color: Colors.black,
                            backgroundColor: kgreyLinearPB,
                            value: (pairsController.arrayInterval - 1) / pairsController.mainChain.length,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${pairsController.arrayInterval - 1}/${pairsController.mainChain.length}',
                        style: Get.textTheme.headline2,
                      ),
                      const SizedBox(height: 50),
                      CustomCircularPB(
                        pageController: PageController(),
                        maxSeconds: pairsController.maxSecondsStart,
                        index: 0,
                        nextPage: pairsController.nextPageStart!,
                        maxLength: 1,
                        isSelectionPage: true,
                      ),
                      const SizedBox(height: 25,),
                      Text(
                        'highlight_5_objects'.tr,
                        textAlign: TextAlign.center,
                        style: Get.textTheme.bodyText1,
                      ),
                      const SizedBox(height: 25,),
                      Text(
                        pairsController.mainChain[pairsController.arrayInterval - 2],
                        style: Get.textTheme.headline2!.copyWith(fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                      sizedBoxLow(),
                      pairsController.arrayInterval - 2 < pairsController.descriptionList.length ? Text(
                        pairsController.descriptionList[pairsController.arrayInterval - 2],
                        style: Get.textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ) : Container()
                    ],
                  ),
                  CustomButton(
                      title: 'continue'.tr,
                      color: kblue,
                      handler: () {
                        timerController.seconds.value = pairsController.maxSecondsStart;
                        timerController.timer!.cancel();
                        pairsController.maxSecondsStart = pairsController.tempSeconds;
                        Get.off(pairsController.nextPageStart, transition: Transition.rightToLeft);
                      }
                  )
                ]
            ),
          ),

      ),
    );
  }
}

