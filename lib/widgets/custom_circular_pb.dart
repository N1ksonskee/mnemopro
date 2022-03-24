import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/check_box_controller.dart';
import 'package:practical_mnemonic/controllers/page_index_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/controllers/timer_controller.dart';



class CustomCircularPB extends StatefulWidget {
  CustomCircularPB({
    Key? key,
    required this.pageController,
    required this.index, // index of item
    required this.maxSeconds, // of timer
    required this.nextPage, // if it is last page
    required this.maxLength, // if it is last page we must know length
    this.firstValue = '',
    this.secondCorrect = '',
    this.isChain = false, // if null => pairs, if true => chain
    this.textEditingController,
    this.focusNode,
    this.isSmallSize = false,
    this.isMiddleSize = false,
    this.isFormCheck = false,
    this.isTopIndex = false,
    this.isMale = false,
    this.isSelectionPage = false,
    this.isNotCheckPractical = false,
    this.isFormCheckBoxExist = false
  }) : super(key: key);

  final PageController pageController;
  final int index;
  final Widget nextPage;
  final int maxSeconds;
  final int maxLength;
  final bool isChain;
  final bool isSmallSize;
  final bool isMiddleSize;
  String firstValue;
  String secondCorrect;
  TextEditingController? textEditingController;
  FocusNode? focusNode;
  final bool isFormCheck;
  final bool isTopIndex;
  final bool isMale;
  final bool isSelectionPage;
  final bool isNotCheckPractical;
  final bool isFormCheckBoxExist;


  @override
  _CustomCircularPBState createState() => _CustomCircularPBState();
}

class _CustomCircularPBState extends State<CustomCircularPB> {

  TimerController timerController = Get.find();
  PairsController pairsController = Get.find();

  @override
  void initState() {


    timerController.timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if(!mounted) return;
      pairsController.totalSeconds++;
      setState(() => timerController.decrement());
    });

    // timer!.isActive;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isBiggerThenFiveSeconds = timerController.seconds > 5;

    if (timerController.seconds.value == 0) {

      if(widget.isChain) {
        Get.find<PairsController>().chainElements.add(
          ChainElement(
            isCorrect: false,
            isTimesUp: true,
            element: widget.firstValue,
            nextElement: widget.secondCorrect,
          )
        );
      } else {
        Get.find<PairsController>().timesUpPairs.add(
          Pair(
            firstValue: widget.firstValue,
            secondCorrect: widget.secondCorrect,
            secondValue: widget.secondCorrect,
            isCorrect: false,
            isMale: widget.isMale,
          )
        );
      }

      if(widget.isFormCheck) {
        widget.focusNode!.unfocus();
      }

      timerController.timer!.cancel();

      WidgetsBinding.instance!.addPostFrameCallback((_)  {

         showModalBottomSheet(
           enableDrag: false,
          context: context,
          builder: (context) {
            return WillPopScope(
              onWillPop: () async => false,
              child: Container(
                  decoration: BoxDecoration(
                      color: kgrey.withOpacity(0.2),
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(18))
                  ),
                  padding: const EdgeInsets.all(16),
                  height: 100,
                  child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                              Icons.timer,
                              color: kgrey,
                              size: 60
                          ),
                          const SizedBox(width: 16),
                          Text(
                            'times_up'.tr,
                            style: Get.textTheme.headline2!.copyWith(
                                color: kgrey, fontSize: 30),
                          ),
                        ],
                      )
                  )
              ),
            );
          },
          elevation: 0,
          isDismissible: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
          barrierColor: Colors.transparent,
        );
      });
      timerController.timer!.cancel();

      Future.delayed(const Duration(milliseconds: 300), () {
        timerController.seconds.value = widget.maxSeconds;
        if(widget.isFormCheck) {
          widget.textEditingController!.clear();
          if(widget.isFormCheckBoxExist) Get.find<CheckBoxController>().isChecked.value = false;
        }
        Navigator.pop(context);

        if(widget.isTopIndex) {
          Get.find<PageControllerIndex>().pageIndex.value++;
        }

        if(widget.index + 1 == widget.maxLength) {
          if(widget.isSelectionPage) {
            final pairsController = Get.find<PairsController>();
            pairsController.maxSecondsStart = pairsController.tempSeconds;
            Get.off(pairsController.nextPageStart, transition: Transition.rightToLeft);
          }

          if(widget.isNotCheckPractical) {
            if(Get.find<PairsController>().practicalKey == 'practical3_1') {
              AuthService().upgradeData('practical3_2');
            }
            Get.back();
          } else {
            Get.off(widget.nextPage, transition: Transition.rightToLeft);
          }
        } else {

          widget.pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.easeIn);
        }


      });


    }


    return SizedBox(
      width: widget.isSmallSize ? 60 : widget.isMiddleSize ? 100 : 150,
      height: widget.isSmallSize ? 60 : widget.isMiddleSize ? 100 : 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Text(
              '${timerController.seconds}',
              style: TextStyle(
                  fontSize: widget.isSmallSize ? 30 : widget.isMiddleSize ? 45 : 60,
                  color: isBiggerThenFiveSeconds ? const Color(0xFF0D6AB7) : const Color(
                      0xFFFF2939),
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          TweenAnimationBuilder(
            tween: Tween(begin: 1.0, end: 0.0),
            duration: Duration(seconds: widget.maxSeconds),
            builder: (context, double value, _) {

              return CircularProgressIndicator(
                  strokeWidth: widget.isSmallSize ? 5 : widget.isMiddleSize ? 7 : 10,
                  value: value.toDouble() , // seconds / maxSeconds
                  color: isBiggerThenFiveSeconds ? const Color(0xFF0D6AB7) : const Color(
                      0xFFFF2939),
                  backgroundColor: isBiggerThenFiveSeconds ? const Color(0xFF0D6AB7)
                      .withOpacity(0.2) : const Color(0xFFFF2939).withOpacity(0.2),
                );

            },
          )
        ],
      ),
    );
  }
}