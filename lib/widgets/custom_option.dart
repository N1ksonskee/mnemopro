import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/page_index_controller.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/controllers/timer_controller.dart';

class CustomOption extends StatefulWidget {
  const CustomOption({
    Key? key,
    required this.value,
    required this.correctValue,
    required this.firstValue,
    required this.index,
    required this.isCorrect,
    required this.pageController,
    required this.maxLength,
    required this.maxSeconds,
    required this.nextPage,
    this.isTopIndex = false,
    this.isMale = false,
    this.isTrueFalseOption = false,
    this.isChain = false,
    this.isSmallOptionsText = false,
  }) : super(key: key);

  final String value;
  final String correctValue;
  final String firstValue;
  final int index;
  final bool isCorrect;
  final PageController pageController;
  final int maxLength;
  final int maxSeconds;
  final Widget nextPage;
  final bool isTopIndex;
  final bool isMale;
  final bool isTrueFalseOption;
  final bool isChain;
  final bool isSmallOptionsText;


  @override
  _CustomOptionState createState() => _CustomOptionState();
}

class _CustomOptionState extends State<CustomOption> {
  bool isTapped = false;
  final PairsController pairController = Get.find();
  final TimerController timerController = Get.find();

  @override
  Widget build(BuildContext context) {
    final Color tappedColor = widget.isCorrect ? kblue : kred;
    final IconData tappedIcon = widget.isCorrect ? Icons.check_circle : Icons.cancel;
    final String tappedText = widget.isCorrect ? 'correct_one'.tr : 'incorrect_one'.tr;



    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isTapped = true;
          });

          if(widget.isChain) {
            Get.find<PairsController>().chainElements.add(
              ChainElement(
                isCorrect: widget.isCorrect,
                element: widget.firstValue,
                nextElement: widget.correctValue,
                answeredFalseNextElement: widget.isCorrect ? widget.correctValue : widget.value
              )
            );
          } else {
            if(widget.isCorrect) {
              pairController.rightAnswersPairs.add(
                  Pair(
                    firstValue: widget.firstValue,
                    secondCorrect: widget.correctValue,
                    secondValue: widget.value,
                    isCorrect: widget.isCorrect,
                    isMale: widget.isMale,
                  )
              );
            } else {
              pairController.lieAnswersPairs.add(
                  Pair(
                      firstValue: widget.firstValue,
                      secondCorrect: widget.correctValue,
                      secondValue: widget.value,
                      isCorrect: widget.isCorrect,
                      isMale: widget.isMale
                  )
              );
            }
          }



          if(!widget.isTrueFalseOption) {
            showModalBottomSheet(
              enableDrag: false,
              context: context,
              builder: (context) =>  WillPopScope(
                onWillPop: () async => false,
                child: Container(
                decoration: BoxDecoration(
                  color: tappedColor.withOpacity(0.2),
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(18))
                ),
                padding: const EdgeInsets.all(16),
                height: 100,
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        tappedIcon,
                        color: tappedColor,
                        size: 60
                      ),
                      const SizedBox(width: 16),
                      Text(
                        tappedText,
                        style: Get.textTheme.headline2!.copyWith(color: tappedColor, fontSize: 30),
                      ),
                    ],
                  )
                )
            ),
              ),
              elevation: 0,
              isDismissible: false,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(18))),
              barrierColor: Colors.transparent
            );
          }

          timerController.timer!.cancel();

          if(widget.isTrueFalseOption) {
            timerController.seconds.value = widget.maxSeconds;
            if(widget.isTopIndex) {
              Get.find<PageControllerIndex>().pageIndex.value++;
            }
            if(widget.index + 1 == widget.maxLength) {
              Get.off(widget.nextPage, transition: Transition.rightToLeft);
            } else {
              widget.pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.easeIn);
            }
          } else {
            Future.delayed(const Duration(milliseconds: 300), () {
              timerController.seconds.value = widget.maxSeconds;
              Navigator.pop(context);
              if(widget.isTopIndex) {
                Get.find<PageControllerIndex>().pageIndex.value++;
              }
              if(widget.index + 1 == widget.maxLength) {
                Get.off(widget.nextPage, transition: Transition.rightToLeft);
              } else {
                widget.pageController.nextPage(duration: const Duration(milliseconds: 1), curve: Curves.easeIn);
              }
            });
          }


        },
        child: Container(
          decoration: BoxDecoration(
              color: isTapped ? tappedColor.withOpacity(0.2) : kgreyLinearPB.withOpacity(0.2),
              border: Border.all(color: isTapped ? tappedColor : kgreyLinearPB, width: 2),
              borderRadius: BorderRadius.circular(20)
          ),
          margin: const EdgeInsets.only(right: 8, bottom: 8),
          height: 80,
          child: Center(
            child: Text(
              widget.value,
              textAlign: TextAlign.center,
              style: Get.textTheme.bodyText1!.copyWith(fontSize: widget.isSmallOptionsText ? 16 : 18),
            ),
          ),
        ),
      ),
    );
  }
}