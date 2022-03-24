import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/expansion_image.dart';


class ExerciseCountriesDestinationInfo extends StatelessWidget {
  const ExerciseCountriesDestinationInfo({Key? key,
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
                'world_location_1'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_location_2'.tr,
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: SizedBox(height: 300, child: ExpansionImage(path: 'assets/countries/south_america_begin_end.svg', isSvg: true,)),),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: SizedBox(height: 300,child: ExpansionImage(path: 'assets/countries/north_america_begin_end.svg', isSvg: true,)),),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: SizedBox(height: 300, child: ExpansionImage(path: 'assets/countries/europe_begin_end.svg', isSvg: true,)),),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: SizedBox(height: 300,child: ExpansionImage(path: 'assets/countries/asia_begin_end.svg', isSvg: true,)),),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: SizedBox(height: 300, child: ExpansionImage(path: 'assets/countries/oceania_begin_end.svg', isSvg: true,)),),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              sizedBoxHigh(),
              const Center(child: SizedBox(height: 300,child: ExpansionImage(path: 'assets/countries/afrika_begin_end.svg', isSvg: true,)),),
              sizedBoxHigh(),
              sizedBoxHigh(),
              Text(
                'world_location_3'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_location_4'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_location_5'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'world_location_6'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxLow(),
              Text(
                'world_location_7'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_location_8'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'world_location_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Row(
                children: [
                  Text(
                    'world_location_10'.tr,
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
                      TextSpan(text: 'world_location_11'.tr),
                      TextSpan(text: 'world_location_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'world_location_13'.tr),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'world_location_14'.tr),
                      TextSpan(text: 'world_location_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'world_location_16'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'OK',
                  color: kgreyDark,
                  handler: () {
                    AuthService().upgradeData('world-dest-1');
                    Get.back();
                  }
              )
            ],
          ),
        )
      ]
  );
}



