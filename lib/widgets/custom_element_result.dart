import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';


class CustomElementResult extends StatelessWidget {
  const CustomElementResult({
    Key? key,
    required this.title,
    required this.color,
    required this.isCorrect,
    required this.isTimesUp,
    required this.subtitle,
    this.isRememberView = false,
    this.isHorizontal = false
  }) : super(key: key);

  final String title;
  final Color color;
  final bool isCorrect;
  final bool isTimesUp;
  final String subtitle;
  final bool isRememberView;
  final bool isHorizontal;

  @override
  Widget build(BuildContext context) {
    final pairsController = Get.find<PairsController>();
    return Container(
    width: isHorizontal ? 200 : null,
    margin: isHorizontal ? null : const EdgeInsets.symmetric(horizontal: 70),
    decoration: BoxDecoration(
      color: color.withOpacity(0.2),
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: color, width: 2),
    ),
    padding: const EdgeInsets.all(16),
    child: Center(
      child: Column(
        children: [
          Text(
            title,
            style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          !isCorrect && !isTimesUp && pairsController.repeatInterval == 1 || pairsController.repeatInterval == 4
              ? isRememberView
                  ? Column(
                      children:  [
                        const SizedBox(height: 4,),
                        Text(
                          '${'you_remember'.tr} ${Get.find<PairsController>().formCheckBoxHint}',
                          style: const TextStyle(color: kblueDark, fontSize: 14),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  : Column(
                      children: [
                        const SizedBox(height: 4,),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: const TextStyle(color: Colors.red, fontSize: 14),
                              children: [
                                TextSpan(text: 'your_answer'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                                TextSpan(text: subtitle, ),
                              ]
                          ),
                        )
                      ],
                    )
                : Container()
        ],
      ),
    ),
  );
  }
}