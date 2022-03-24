import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';


class ExerciseCountriesChainInfo extends StatelessWidget {
  const ExerciseCountriesChainInfo({Key? key, required this.title,}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(
          title, style: Get.textTheme.headline1, maxLines: 2,),
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
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'world_countries_1'.tr),
                      TextSpan(text: 'world_countries_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'world_countries_3'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: SizedBox(height: 200, child: ExpansionImage(path: 'assets/word_seq.svg', isSvg: true,))),
              sizedBoxHigh(),
              sizedBoxHigh(),
              Text(
                'world_countries_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_6'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_7'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_8'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_10'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_11'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_12'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_13'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_14'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_15'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_16'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_17'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_18'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_19'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, color: kred, fontSize: 20),
              ),
              sizedBoxLow(),
              Text(
                'world_countries_20'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_21'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
               Text(
                'world_countries_22'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
              ),
              sizedBoxLow(),
              Text(
                'world_countries_23'.tr,
              style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'world_countries_24'.tr),
                    TextSpan(text: 'world_countries_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'world_countries_26'.tr),
                    TextSpan(text: 'world_countries_27'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'world_countries_28'.tr),
                      TextSpan(text: 'world_countries_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'world_countries_30'.tr),
                      TextSpan(text: 'world_countries_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'world_countries_32'.tr),
                      TextSpan(text: 'world_countries_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'world_countries_34'.tr),
                      TextSpan(text: 'world_countries_35'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: [
                      TextSpan(text: 'world_countries_36'.tr),
                      TextSpan(text: 'world_countries_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'world_countries_38'.tr),
                      TextSpan(text: 'world_countries_39'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxHigh(),
             Text(
               'world_countries_40'.tr,
               style: Get.textTheme.bodyText1,
             ),
              sizedBoxHigh(),
              Text(
                'world_countries_41'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 20),
              ),
              sizedBoxLow(),
              Text(
                'world_countries_42'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_43'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_44'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_45'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, color: kred),
              ),
              sizedBoxLow(),
              Text(
                'world_countries_46'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_47'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_48'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_countries_49'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_50'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_51'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_52'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_countries_53'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                children: [
                  Text(
                    'world_countries_54'.tr,
                    style: Get.textTheme.headline2,
                  ),
                  const SizedBox(width: 10,),
                  const Icon(
                      Icons.timer,
                      color: Colors.black,
                      size: 40
                  )
                ],
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children: [
                      TextSpan(text: 'world_countries_55'.tr),
                      TextSpan(text: 'world_countries_56'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxHigh(),
              CustomButton(
                title: 'OK',
                color: kgreyDark,
                handler: () {
                  AuthService().upgradeData('world-1');
                  Get.back();
                },
              )
            ],
          ),
        )
      ]
  );
}



