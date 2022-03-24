import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';


class ExerciseDatesInvInfo extends StatelessWidget {
  const ExerciseDatesInvInfo({Key? key,
    required this.title,
  }) : super(key: key);


  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2,),
        leading: const CloseIconButton(isLec: true),
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
              Text(
                'dates_inv_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_inv_2'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'dates_inv_3'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'dates_inv_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'dates_inv_5'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'dates_inv_6'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_inv_7'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_inv_8'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_inv_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'Ok',
                  color: kgreyDark,
                  handler: () {
                    AuthService().upgradeData('dates-inv-1');
                    Get.back();
                  }
              )
            ],
          ),
        )
      ]
  );
}



