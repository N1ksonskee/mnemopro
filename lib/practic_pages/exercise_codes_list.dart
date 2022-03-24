import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

import '../constants/codes.dart';
import '../widgets/close_icon_button.dart';
import '../widgets/custom_button.dart';

class ExerciseCodesList extends StatelessWidget {
  const ExerciseCodesList({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {


    final List<String> titles = [
      '00-09',
      '10-19',
      '20-29',
      '00-29',
      '30-39',
      '40-49',
      '50-59',
      '30-59',
      '60-69',
      '70-79',
      '80-89',
      '90-99',
      '60-99',
      '00-99',
    ];



    return Scaffold(
      backgroundColor: kblueBG,
      appBar: AppBar(
        backgroundColor: kblue,
        title: Text(title, style: Get.textTheme.headline1!.copyWith(fontSize: 20)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _buildPracticalTile(
                handler: () => Get.to(ExerciseCodesInfo(title: 'how_to_learn_nac'.tr,), transition: Transition.rightToLeft),
                title: 'how_to_learn_nac'.tr,
                iconData: Icons.info
            ),
            Center(child: Container(height: 50, width: 1, color: Colors.black)),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) => _buildExerciseElement(
                    title: titles[i],
                    index: i,
                ),
                separatorBuilder: (_, i) => Center(child: Container(height: 50, width: 1, color: Colors.black)),
                itemCount: titles.length
            ),
          ],
        ),
      ),
    );
  }




  Widget _buildExerciseElement({
    required String title,
    required index,
  }) => Stack(
    alignment: Alignment.center,
    clipBehavior: Clip.none,
    children: [
      GestureDetector(
        onTap: () {
          final pairsController = Get.put(PairsController(), permanent: true);
          pairsController.clear();
          pairsController.title = title;
          pairsController.isToggleNumbers = true;
          pairsController.maxSecondsCheck = 5;
          pairsController.isCodesTrainPractical = true;
          pairsController.repeatInterval = 3;


          if(index == 0) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(0, 10).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(0, 10).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 1) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(10, 20).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(10, 20).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 2) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(20, 30).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(20, 30).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 3) {
            pairsController.countOfOnePass = 30;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(0, 30).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(0, 30).toList();
            pairsController.pairs.addAll(List.generate(30, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 4) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(30, 40).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(30, 40).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 5) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(40, 50).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(40, 50).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 6) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(50, 60).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(50, 60).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 7) {
            pairsController.countOfOnePass = 30;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(30, 60).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(30, 60).toList();
            pairsController.pairs.addAll(List.generate(30, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 8) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(60, 70).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(60, 70).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 9) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(70, 80).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(70, 80).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 10) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(80, 90).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(80, 90).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 11) {
            pairsController.countOfOnePass = 10;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(90, 100).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(90, 100).toList();
            pairsController.pairs.addAll(List.generate(10, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 12) {
            pairsController.countOfOnePass = 40;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(60, 100).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(60, 100).toList();
            pairsController.pairs.addAll(List.generate(40, (i) => [numbersList[i], codesList[i]]));
          } else if(index == 13) {
            pairsController.countOfOnePass = 100;
            List<dynamic> codesList = GetStorage().read('numbersCodes').getRange(0, 100).toList();
            List<dynamic> numbersList = Codes.numbers.getRange(0, 100).toList();
            pairsController.pairs.addAll(List.generate(100, (i) => [numbersList[i], codesList[i]]));
          }


          pairsController.nextPageStart = const PracticalPairsStart();
          pairsController.nextPageCheck = const PracticalPairsCheck();
          pairsController.nextPageResult = const PracticalPairsResult();

          Get.to(const PracticalPairsCheck(), transition: Transition.rightToLeft);
        },
        child: index == 3 || index == 7 || index == 12 || index == 13
          ? Container(
              height: 60,
              width: 200,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              decoration: BoxDecoration(
                color: kgrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                title,
                style: Get.textTheme.bodyText1!.copyWith(fontSize: 22, color: Colors.white),
              ),
            )
          : Container(
            height: 60,
            width: 150,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              title,
              style: Get.textTheme.bodyText1!.copyWith(fontSize: 22),
            ),
          ),
      ),
      index == 13 ? Container() : Positioned(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        top: -5,
        left: 0,
        right: 0,
      ),
      index == 13 ? Container() : Positioned(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        bottom: -5,
        left: 0,
        right: 0,
      ),
    ],
  );

  Widget _buildPracticalTile({required VoidCallback handler, required String title, required IconData iconData}) => ListTile(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    title: Text(title, style: Get.textTheme.bodyText1!.copyWith(fontSize: 20),),
    onTap: handler,
    tileColor: Colors.white,
    leading: SizedBox(width: 45, height: 45,child: Icon(iconData, color: kblue, size: 40,)),
  );
}


class ExerciseCodesInfo extends StatelessWidget {
  const ExerciseCodesInfo({Key? key, required this.title,}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: _buildBody())
      ,
    );
  }

  Widget _buildBody() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'nac_1'.tr),
              TextSpan(text: 'nac_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'nac_3'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        Text(
          'nac_4'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
            style: Get.textTheme.bodyText1,
            children:  [
              TextSpan(text: 'nac_5'.tr),
              TextSpan(text: 'nac_6'.tr),
              TextSpan(text: 'nac_7'.tr),
              TextSpan(text: 'nac_8'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'nac_9'.tr),
            ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'nac_10'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'nac_11'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'nac_12'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'nac_13'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        Text(
          'nac_14'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxLow(),
        Text(
          'nac_15'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxLow(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'nac_16'.tr),
                TextSpan(text: 'nac_17'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'nac_18'.tr),
                TextSpan(text: 'nac_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: 'nac_20'.tr),
              ]
          ),
        ),
        sizedBoxHigh(),
        Text(
          'nac_21'.tr,
          style: Get.textTheme.headline2,
        ),
        sizedBoxHigh(),
        RichText(
          text: TextSpan(
              style: Get.textTheme.bodyText1,
              children:  [
                TextSpan(text: 'nac_22'.tr),
                TextSpan(text: 'nac_23'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
              ]
          ),
        ),
        sizedBoxLow(),
        Text(
          'nac_24'.tr,
          style: Get.textTheme.bodyText1,
        ),
        sizedBoxHigh(),
        CustomButton(
          title: 'OK',
          color: kgreyDark,
          handler: () => Get.back(),
        )
      ]
  );
}






