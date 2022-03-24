import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class ExerciseFlagsInfo extends StatelessWidget {
  const ExerciseFlagsInfo({Key? key,
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
        leading: const CloseIconButton(isLec: true,),
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
                'world_flags_1'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'world_flags_2'.tr),
                    TextSpan(text: 'world_flags_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'world_flags_4'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children: [
                    TextSpan(text: 'world_flags_5'.tr),
                    TextSpan(text: 'world_flags_6'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'world_flags_7'.tr)
                  ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'world_flags_8'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'world_flags_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_flags_10'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_flags_11'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_flags_12'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'world_flags_13'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: kred),
              ),
              sizedBoxLow(),
              Text(
                'world_flags_14'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Center(
                child: Text(
                  'world_flags_15'.tr,
                  style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic),
                ),
              ),
              sizedBoxLow(),
              Center(child: SvgPicture.asset('assets/flags/asia/flag4_15.svg', height: 200,)),
              sizedBoxHigh(),
              Center(
                child: Text(
                  'world_flags_16'.tr,
                  style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic),
                ),
              ),
              sizedBoxLow(),
              Center(child: SvgPicture.asset('assets/flags/africa/flag6_8.svg', height: 200,)),
              sizedBoxHigh(),
              Center(
                child: Text(
                  'world_flags_17'.tr,
                  style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic),
                ),
              ),
              sizedBoxLow(),
              Center(child: SvgPicture.asset('assets/flags/asia/flag4_6.svg', height: 200,)),
              sizedBoxHigh(),
              Text(
                'world_flags_18'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_flags_19'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_flags_20'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_flags_21'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_flags_22'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_flags_23'.tr,
                style: Get.textTheme.headline2!.copyWith(color: kred),
              ),
              sizedBoxLow(),
              Text(
                'world_flags_24'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'Ok',
                  color: kgreyDark,
                  handler: () {
                    AuthService().upgradeData('flags-1');
                    Get.back();
                  }
              )
            ],
          ),
        )
      ]
  );
}



