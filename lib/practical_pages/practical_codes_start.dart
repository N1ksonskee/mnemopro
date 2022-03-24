import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/practical_codes_controller.dart';
import 'package:practical_mnemonic/controllers/timer_controller.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';


class PracticalCodesStart extends StatelessWidget {
  const PracticalCodesStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PracticalCodesController controller = Get.put(PracticalCodesController());
    TimerController timerController = Get.put(TimerController(controller.maxSecondsStart));
    final PageController pageController = PageController();
    int length = controller.chain.length;

    return WillPopScope(
      onWillPop: () async {
        final shouldClose = await showWarningDialog();
        return shouldClose ?? false;
      },
      child: Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text(controller.title, style: Get.textTheme.headline1, maxLines: 2,),
          leading: const CloseIconButton(),
        ),
        body: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        height: 20,
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
                      const SizedBox(height: 25),
                      CustomCircularPBCodes(maxSeconds: controller.maxSecondsStart,),
                      const SizedBox(height: 25),
                      Text(
                        controller.chain[index],
                        style: Get.textTheme.headline2!.copyWith(fontSize: 30),
                      ),
                      const SizedBox(height: 25,),
                      Obx(() => timerController.seconds.value == 0 ?
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(16),
                          child: GetBuilder<PracticalCodesController>(builder: (_) =>
                             ListView.builder(
                              shrinkWrap: true,
                                itemBuilder: (context, j) => Text(
                                  controller.codes[index][j],
                                  style: const TextStyle(
                                    color: kblue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    height: 2,
                                  ),

                                ),
                              itemCount: controller.codes[index].length,
                            ),
                          )
                        ) : Container(),
                      ),
                    ],
                  ),
                  Obx(() =>
                     CustomButton(
                      isEnable: timerController.seconds.value == 0 ? true : false,
                        title: index + 1 == length ? 'finish'.tr : 'next'.tr,
                        color: kblue,
                        handler: () {
                          timerController.seconds.value = controller.maxSecondsStart;
                          timerController.timer!.cancel();
                          if(index + 1 == length) {
                            if(controller.practicalKey == 'practical3_3') {
                              AuthService().upgradeData('lec3_2');
                            } else if(controller.practicalKey == 'practical4_3') {
                              AuthService().upgradeData('practical4_4');
                            }
                            Get.back();
                          }
                          pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.easeIn);
                        }
                    ),
                  )
                ]
            ),
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: length,
        ),
      ),
    );
  }
}



class CustomCircularPBCodes extends StatefulWidget {
  const CustomCircularPBCodes({Key? key, required this.maxSeconds}) : super(key: key);
  final int maxSeconds;

  @override
  _CustomCircularPBCodesState createState() => _CustomCircularPBCodesState();
}

class _CustomCircularPBCodesState extends State<CustomCircularPBCodes> {
  TimerController timerController = Get.find();

  @override
  void initState() {
    timerController.timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if(!mounted) return;
      setState(() => timerController.decrement());
    });

    // timer!.isActive;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (timerController.seconds.value == 0) {
      timerController.timer!.cancel();
    }
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Text(
              '${timerController.seconds}',
              style: const TextStyle(
                  fontSize: 60,
                  color: Color(0xFF0D6AB7) ,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          TweenAnimationBuilder(
            tween: Tween(begin: 1.0, end: 0.0),
            duration: Duration(seconds: widget.maxSeconds),
            builder: (context, double value, _) => CircularProgressIndicator(
              strokeWidth: 10,
              value: value.toDouble() , // seconds / maxSeconds
              color: const Color(0xFF0D6AB7) ,
              backgroundColor: const Color(0xFF0D6AB7)
                  .withOpacity(0.2)  ,
            ),
          )
        ],
      ),
    );
  }
}



