import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/controllers/timer_controller.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_circular_pb.dart';
import 'package:practical_mnemonic/widgets/custom_option.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';
import '../../practical_pages/practical_pairs_result.dart';



class FacePracticalCheck extends StatelessWidget {
  const FacePracticalCheck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PairsController pairsController = Get.find();
    final PageController pageController = PageController();
    int maxSecondsCheck = 10;
    int length = pairsController.paths.length;
    Get.put(TimerController(maxSecondsCheck));

    Random random = Random();
    pairsController.paths.shuffle();

    String isExistText = 'was'.tr;
    String  isNotExistText = 'was_not'.tr;


    return WillPopScope(
      onWillPop: () async {
        final shouldClose = await showWarningDialog();
        return shouldClose ?? false;
      },
      child: Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text('remember_faces'.tr, style: Get.textTheme.headline1, maxLines: 2,),
          leading: const CloseIconButton(),
        ),
        body: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) {
            int number = random.nextInt(2);
            bool isExistFace = number == 0 ? false : true;
            String path = number == 0 ? pairsController.paths[index] : pairsController.liePaths[index];

            if(index % 5 == 0 && index != 45) {
              for(int i = 0; i < 10; i++) {
                precacheImage(NetworkImage(pairsController.paths[index + i]), context,);
                precacheImage(NetworkImage(pairsController.liePaths[index + i]), context,);
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
                              maxSeconds: maxSecondsCheck,
                              firstValue: path,
                              secondCorrect: isExistFace ? isExistText : isNotExistText,
                              index: index,
                              nextPage: const  PracticalPairsResult(),
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
                        Center(child: SizedBox(height: 400,child: ExpansionImage(path: path, isNetwork: true,))),
                        sizedBoxLow(),
                        Text(
                          'was_there_such_face'.tr,
                          style: const TextStyle(fontSize: 22, color: Colors.black),
                        ),
                        sizedBoxLow(),
                        Row(
                          children: [
                            CustomOption(
                              value: isExistText,
                              index: index,
                              correctValue: isExistFace ? isExistText : isNotExistText,
                              firstValue: path,
                              isCorrect: isExistFace,
                              pageController: pageController,
                              maxLength: length,
                              maxSeconds: maxSecondsCheck,
                              nextPage: const PracticalPairsResult(),
                            ),
                            CustomOption(
                              value: isNotExistText,
                              index: index,
                              correctValue: isExistFace ? isExistText : isNotExistText,
                              firstValue: path,
                              isCorrect: !isExistFace,
                              pageController: pageController,
                              maxLength: length,
                              maxSeconds: maxSecondsCheck,
                              nextPage: const PracticalPairsResult(),
                            )
                          ],
                      ),
                    ],
                  ),
                ]
              ),
            );
          } ,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: length,
        ),
      ),
    );
  }
}





