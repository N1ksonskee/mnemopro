import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

class ExerciseCountriesCapitalInfo extends StatelessWidget {
  const ExerciseCountriesCapitalInfo({Key? key,
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
                'world_capitals_1'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'world_capitals_2'.tr),
                    TextSpan(text: 'world_capitals_3'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_capitals_6'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'world_capitals_7'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'world_capitals_8'.tr),
                    TextSpan(text: 'world_capitals_9'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'world_capitals_10'.tr,)
                  ]
                ),
              ),
              sizedBoxHigh(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    '1',style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'world_capitals_11'.tr,
                        style: const TextStyle(fontSize: 20, color: kred, fontWeight: FontWeight.normal),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_12'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child:  Text(
                        'world_capitals_13'.tr,
                        style: const TextStyle(fontSize: 20, color: kred, fontWeight: FontWeight.normal),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_14'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_15'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'world_capitals_16'.tr,
                        style: const TextStyle(fontSize: 20, color: kred, fontWeight: FontWeight.normal),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_17'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_18'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_19'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_20'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    '4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'world_capitals_21'.tr,
                        style: const TextStyle(fontSize: 20, color: kred, fontWeight: FontWeight.normal),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_22'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_23'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_24'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_25'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_26'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_27'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    '5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'world_capitals_28'.tr,
                        style: const TextStyle(fontSize: 20, color: kred, fontWeight: FontWeight.normal),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_29'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_30'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    '6',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'world_capitals_31'.tr,
                        style: const TextStyle(fontSize: 20, color: kred, fontWeight: FontWeight.normal),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_32'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
               Text(
                'world_capitals_33'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_34'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'world_capitals_35'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'world_capitals_36'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'world_capitals_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'world_capitals_38'.tr),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'world_capitals_39'.tr),
                      TextSpan(text: 'world_capitals_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'world_capitals_41'.tr),
                      TextSpan(text: 'world_capitals_42'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'world_capitals_43'.tr),
                    ]
                ),
              ),
              sizedBoxHigh(),
               Text(
                'world_capitals_44'.tr,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_45'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_46'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    '7',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: Text(
                        'world_capitals_47'.tr,
                        style: const TextStyle(fontSize: 20, color: kred, fontWeight: FontWeight.normal),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_48'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_capitals_49'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                children: [
                  Text(
                    'world_capitals_50'.tr,
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
                    children:  [
                      TextSpan(text: 'world_capitals_51'.tr),
                      TextSpan(text: 'world_capitals_52'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'world_capitals_53'.tr),
                    ]
                ),
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'OK',
                  color: kgreyDark,
                  handler: () {
                    AuthService().upgradeData('world-capital-1');
                    Get.back();
                  }
              )
            ],
          ),
        )
      ]
  );
}



