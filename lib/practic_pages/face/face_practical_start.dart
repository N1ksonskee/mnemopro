import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/controllers/timer_controller.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_circular_pb.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';
import 'face_practical_check.dart';


class FacePracticalStart extends StatelessWidget {
  const FacePracticalStart({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    PageController pageController = PageController();
    final PairsController pairsController = Get.find();

    int maxSecondsStart = 10;

    TimerController timerController = Get.put(TimerController(maxSecondsStart));
    int length = pairsController.paths.length;


    return WillPopScope(
      onWillPop: () async {
        final shouldClose = await showWarningDialog();
        return shouldClose ?? false;
      },
      child: Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text('memorize_50_faces'.tr, style: Get.textTheme.headline1, maxLines: 2,),
          leading: const CloseIconButton(),
        ),
        body: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) {
            if(index % 5 == 0 && index != 45) {
              if(index == 45) {
                for(int i = 0; i < 10; i++) {
                  precacheImage(NetworkImage(pairsController.paths[i]), context,);
                }
              } else {
                for(int i = 0; i < 10; i++) {
                  precacheImage(NetworkImage(pairsController.paths[index + i]), context,);
                }
              }

            }
            return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomCircularPB(
                            pageController: pageController,
                            maxSeconds: maxSecondsStart,
                            index: index,
                            nextPage: const FacePracticalCheck(),
                            maxLength: length,
                            isSmallSize: true,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 200,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: LinearProgressIndicator(
                                    color: Colors.black,
                                    backgroundColor: kgreyLinearPB,
                                    value: (index + 1) / length,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${index+1}/$length',
                                style: Get.textTheme.headline2,
                              ),
                            ],
                          )
                        ],
                      ),
                      sizedBoxHigh(),
                      Center(child: SizedBox(height: 400,child: ExpansionImage(path: pairsController.paths[index], isNetwork: true))),
                    ],
                  ),
                  CustomButton(
                    title: index + 1 == length ? 'continue'.tr : 'next'.tr,
                    color: kblue,
                    handler: () {
                      timerController.seconds.value = maxSecondsStart;
                      timerController.timer!.cancel();

                      if(index + 1 == length) {
                        Get.off(const FacePracticalCheck(), transition: Transition.rightToLeft);
                      } else {
                        pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.easeIn);
                      }
                    }
                  )
              ]
            ),
          );
          },
          physics: const NeverScrollableScrollPhysics(),
          itemCount: length,
        ),
      ),
    );
  }
}

