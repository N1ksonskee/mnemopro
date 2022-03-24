import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';

class ExerciseDatesWorldInfo extends StatelessWidget {
  const ExerciseDatesWorldInfo({Key? key,
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
                'dates_world_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'dates_world_2'.tr),
                    TextSpan(text: 'dates_world_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'dates_world_4'.tr),
                    TextSpan(text: 'dates_world_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'dates_world_6'.tr),
                  ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_7'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_8'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_9'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_10'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_11'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_12'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: [
                      TextSpan(text: 'dates_world_13'.tr),
                      TextSpan(text: 'dates_world_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'dates_world_15'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_16'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_17'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              Text(
                'dates_world_18'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_19'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_20'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_21'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              Text(
                'dates_world_22'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_23'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_24'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
               Text(
                'dates_world_25'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kred),
              ),
              sizedBoxLow(),
              Text(
                'dates_world_26'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_27'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_28'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_29'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_30'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_31'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomExpansionTileLec(
                widgets: [
                  Text(
                    'dates_world_32'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    'dates_world_33'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    'dates_world_34'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                  Text(
                    'dates_world_35'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxLow(),
                ],
                title: 'dates_world_36'.tr,
                subtitle: 'important'.tr,
                color: kred,
                subtitleColor: kredDark
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_37'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'dates_world_38'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_39'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'dates_world_40'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'Ok',
                  color: kgreyDark,
                  handler: () {
                    AuthService().upgradeData('dates-world-1');
                    Get.back();
                  }
              )
            ],
          ),
        )
      ]
  );
}



