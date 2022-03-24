import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/practic_pages/exercise_codes_list.dart';
import 'package:practical_mnemonic/practical_pages/practical_chain_result.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_check.dart';
import 'package:practical_mnemonic/practical_pages/practical_pairs_start.dart';
import 'package:practical_mnemonic/utils/generate_tel_numbers.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';

class PracticalTelInfo extends StatelessWidget {
  const PracticalTelInfo({
    Key? key,
    required this.title,
    required this.chainCount,
    required this.maxSecondsStart,
    required this.maxArrayInterval
  }) : super(key: key);

  final String title;
  final int chainCount;
  final int maxSecondsStart;
  final int maxArrayInterval;

  @override
  Widget build(BuildContext context) {


    final PairsController pairsController = Get.put(PairsController(), permanent: true);
    pairsController.clear();
    pairsController.title = title;
    pairsController.maxSecondsStart = maxSecondsStart;
    pairsController.maxSecondsCheck = 30;
    pairsController.maxArrayInterval = maxArrayInterval;
    pairsController.isChainPractical = true;
    pairsController.countOfOnePass = 5;
    pairsController.isFormCheck = true;
    pairsController.formHintText = 'phone_number_hint'.tr;
    pairsController.telCarText = 'phone_desc_text'.tr;
    pairsController.isLociiPractical = true;
    pairsController.isTelPractical = true;
    pairsController.textInputType = TextInputType.phone;
    pairsController.maskFormatter = MaskTextInputFormatter(mask: '### ###-##-##');
    pairsController.nextPageStart = const PracticalPairsStart();
    pairsController.nextPageCheck = const PracticalPairsCheck();
    pairsController.nextPageResult = const PracticalChainResult();

    pairsController.practicalKey = 'practical5_2';


    pairsController.chain = generateTelNumbers(chainCount);

    pairsController.chains = List.generate(3, (index) => []);

    for(int i = 0, k = 0; i < 2; i++) {
      for(int j = 0; j < pairsController.countOfOnePass; j++) {
        pairsController.chains[i].add(pairsController.chain[k]);
        print(pairsController.chain[k]);
        k++;
      }
      pairsController.chainsToFix.add(ChainToFix(chain: pairsController.chains[i]));
    }


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
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_2_1'.tr),
                    TextSpan(text: 'practical5_2_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold))
                  ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'practical5_2_3'.tr,
                style: Get.textTheme.headline2!.copyWith(color: kred),
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_2_4'.tr),
                    TextSpan(text: 'practical5_2_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_2_6'.tr)
                  ]
                ),
              ),
              sizedBoxHigh(),
              OutlinedButton(
                onPressed: () => Get.off(ExerciseCodesList(title: 'learn_nac'.tr,), transition: Transition.rightToLeft),
                child: Text(
                  'learn_nac'.tr,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: kblue ),
                ),
                style: OutlinedButton.styleFrom(shape: const StadiumBorder(), side: const BorderSide(color: kblue), padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
              ),
              sizedBoxHigh(),
              Text(
                'practical5_2_7'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_2_8'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_2_9'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical5_2_10'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'practical5_2_11'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              SvgPicture.asset('assets/phone_number.svg', height: 300,),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'practical5_2_12'.tr),
                      TextSpan(text: 'practical5_2_13'.tr, style:const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'practical5_2_14'.tr),
                    ]
                ),
              ),
              sizedBoxHigh(),
              Text(
                'practical5_2_15'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_2_16'.tr),
                    TextSpan(text: 'practical5_2_17'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_2_18'.tr),
                  ]
                ),
              ),
              sizedBoxLow(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: Get.textTheme.bodyText1,
                          children:  [
                            TextSpan(text: 'practical5_2_19'.tr),
                            TextSpan(text: 'practical5_2_20'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'practical5_2_21'.tr),
                            TextSpan(text: 'practical5_2_22'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'practical5_2_23'.tr),
                            TextSpan(text: 'practical5_2_24'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                          ]
                        ),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'practical5_2_25'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_2_26'.tr),
                    TextSpan(text: 'practical5_2_27'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_2_28'.tr),
                    TextSpan(text: 'practical5_2_29'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxLow(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 75, color: kred),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                      child: RichText(
                        text: TextSpan(
                            style: Get.textTheme.bodyText1,
                            children:  [
                              TextSpan(text: 'practical5_2_30'.tr),
                              TextSpan(text: 'practical5_2_31'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'practical5_2_32'.tr),
                              TextSpan(text: 'practical5_2_33'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'practical5_2_34'.tr),
                              TextSpan(text: 'practical5_2_35'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                            ]
                        ),
                      )
                  )
                ],
              ),
              sizedBoxLow(),
              Text(
                'practical5_2_36'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                  style: Get.textTheme.bodyText1,
                  children:  [
                    TextSpan(text: 'practical5_2_37'.tr),
                    TextSpan(text: 'practical5_2_38'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'practical5_2_39'.tr),
                    TextSpan(text: 'practical5_2_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
              sizedBoxHigh(),
              CustomExpansionTileLec(
                widgets: [
                  Text(
                    'practical5_2_41'.tr,
                    style: Get.textTheme.headline2,
                  ),
                  sizedBoxHigh(),
                  RichText(
                    text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children:  [
                        TextSpan(text: 'practical5_2_42'.tr),
                        TextSpan(text: 'practical5_2_43'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'practical5_2_44'.tr),
                        TextSpan(text: 'practical5_2_45'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'practical5_2_46'.tr),
                        TextSpan(text: 'practical5_2_47'.tr, style: const TextStyle(fontWeight: FontWeight.bold, color: kred)),
                        TextSpan(text: 'practical5_2_48'.tr)
                      ]
                    ),
                  ),
                  sizedBoxHigh(),
                   Text(
                    'practical5_2_49'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: kblue),
                  ),
                  sizedBoxLow(),
                  Text(
                    'practical5_2_50'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxHigh(),
                  Text(
                    'practical5_2_51'.tr,
                    style: Get.textTheme.headline2,
                  ),
                  sizedBoxHigh(),
                  RichText(
                    text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children:  [
                        TextSpan(text: 'practical5_2_52'.tr),
                        TextSpan(text: 'practical5_2_53'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'practical5_2_54'.tr),
                        TextSpan(text: 'practical5_2_55'.tr, style: const TextStyle(fontWeight: FontWeight.bold, color: kred)),
                        TextSpan(text: 'practical5_2_56'.tr)
                      ]
                    ),
                  ),
                  sizedBoxHigh(),
                   Text(
                    'practical5_2_57'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: kblue),
                  ),
                  sizedBoxLow(),
                  Text(
                    'practical5_2_58'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxHigh(),
                  RichText(
                    text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children:  [
                        TextSpan(text: 'practical5_2_59'.tr),
                        TextSpan(text: 'practical5_2_60'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'practical5_2_61'.tr),
                        TextSpan(text: 'practical5_2_62'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'practical5_2_63'.tr)
                      ]
                    ),
                  ),
                  sizedBoxHigh(),
                   Text(
                    'practical5_2_64'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20, color: kblue),
                  ),
                  sizedBoxLow(),
                  Text(
                    'practical5_2_65'.tr,
                    style: Get.textTheme.bodyText1,
                  )
                ],
                title: 'practical5_2_66'.tr,
                subtitle: 'important'.tr,
                color: kred,
                subtitleColor: kredDark
              ),
              sizedBoxHigh(),
              Text(
                'practical5_2_67'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_2_68'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'practical5_2_69'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'start'.tr,
                  color: kblue,
                  handler: () => Get.off(const PracticalPairsStart(), transition: Transition.rightToLeft)
              )
            ],
          ),
        )
      ]
  );
}



