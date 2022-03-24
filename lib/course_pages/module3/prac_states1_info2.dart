import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/shouldWarningDialog.dart';

class PracticalStates1Info2 extends StatelessWidget {
  const PracticalStates1Info2({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
        final shouldClose = await showWarningDialog();
        return shouldClose ?? false;
      },
      child: Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text(Get.find<PairsController>().title, style: Get.textTheme.headline1, maxLines: 2,),
          leading: const CloseIconButton(),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: _buildBody())
        ,
      ),
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
                'practical3_2_27'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical3_2_28'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'practical3_2_29'.tr),
                    TextSpan(text: 'practical3_2_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxLow(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60, color: kblue),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'practical3_2_31'.tr,
                        style: Get.textTheme.bodyText1,
                      )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60, color: kblue),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'practical3_2_32'.tr,
                        style: Get.textTheme.bodyText1,
                      )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60, color: kblue),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'practical3_2_33'.tr,
                        style: Get.textTheme.bodyText1,
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'practical3_2_34'.tr),
                    TextSpan(text: 'practical3_2_35'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical3_2_36'.tr),
                    TextSpan(text: 'practical3_2_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'practical3_2_38'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'continue'.tr,
                  color: kblue,
                  handler: () => Get.off(Get.find<PairsController>().nextPageCheck, transition: Transition.rightToLeft)
              )
            ],
          ),
        )
      ]
  );
}



