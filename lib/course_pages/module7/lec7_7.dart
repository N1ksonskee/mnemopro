import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/main.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';
class Lec7_7 extends StatelessWidget {
  const Lec7_7({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kredBG,
      appBar: AppBar(
        backgroundColor: kred,
        title: Text(title, style: Get.textTheme.headline1, maxLines: 2),
        leading: const CloseIconButton(isLec: true,),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'lec7_7_1'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_2'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_3'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        CustomExpansionTileLec(
          widgets: [
            Text(
              'lec7_7_4'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_7_5'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
            Text(
              'lec7_7_6'.tr,
              style: Get.textTheme.bodyText1,
            ),
            sizedBoxLow(),
          ],
          title: 'lec7_7_7'.tr,
          subtitle: '',
          color: Colors.black,
          subtitleColor: kred,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_8'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_7_9'.tr),
              TextSpan(text: 'lec7_7_10'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_7_11'.tr),
                TextSpan(text: 'lec7_7_12'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_7_13'.tr),
                TextSpan(text: 'lec7_7_14'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_16'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_17'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'lec7_7_18'.tr),
              TextSpan(text: 'lec7_7_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_7_20'.tr),
              TextSpan(text: 'lec7_7_21'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_7_22'.tr),
              TextSpan(text: 'lec7_7_23'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_7_24'.tr),
              TextSpan(text: 'lec7_7_25'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_7_26'.tr),
              const TextSpan(text: '14 107 000', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_7_27'.tr),
              TextSpan(text: 'lec7_7_28'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_7_29'.tr),
              const TextSpan(text: '3000', style:  TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_7_30'.tr),
              TextSpan(text: 'lec7_7_31'.tr, style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'lec7_7_32'.tr)
            ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_33'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_34'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_35'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_36'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_37'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_38'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_39'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_40'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_41'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_42'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_43'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_44'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_45'.tr,
          style: Get.textTheme.bodyText1!.copyWith(fontStyle: FontStyle.italic),
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_46'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_47'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_48'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_49'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_7_50'.tr),
                TextSpan(text: 'lec7_7_51'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_7_52'.tr),
                TextSpan(text: 'lec7_7_53'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_7_54'.tr),
                TextSpan(text: 'lec7_7_55'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_7_56'.tr),
                TextSpan(text: 'lec7_7_57'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_58'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_59'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_60'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_61'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_62'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_63'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_64'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_65'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'lec7_7_66'.tr),
                TextSpan(text: 'lec7_7_67'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_7_68'.tr),
                TextSpan(text: 'lec7_7_69'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'lec7_7_70'.tr),
                TextSpan(text: 'lec7_7_71'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_72'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_73'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
         Text(
          'lec7_7_74'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kblue),
        ),
        sizedBoxLow(),
        Text(
          'lec7_7_75'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_76'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'lec7_7_77'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
            title: 'finish'.tr,
            color: kred,
            handler: () {
              if(!GetStorage().read('course_done')) {
                AuthService().upgradeData('flags');
                AuthService().upgradeData('faces');
                AuthService().upgradeData('course_done');
                Get.offAll(const HomePage(), arguments: 'done', transition: Transition.leftToRight);
              } else {
                Get.back();
              }
            }
        )
      ]
  );
}