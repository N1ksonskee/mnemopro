import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/widgets/close_icon_button.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_expansion_tile_lec.dart';


class ExercisePiInfo extends StatelessWidget {
  const ExercisePiInfo({Key? key,
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
             RichText(
               text: TextSpan(
                 style: Get.textTheme.bodyText1,
                 children: [
                   TextSpan(text: 'pi_1'.tr),
                   TextSpan(text: 'pi_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                   TextSpan(text: 'pi_3'.tr),
                 ]
               ),
             ),
              sizedBoxHigh(),
              CustomExpansionTileLec(
                widgets: [
                  RichText(
                    text: TextSpan(
                      style: Get.textTheme.bodyText1,
                      children:  [
                        TextSpan(text: 'pi_4'.tr),
                        TextSpan(text: 'pi_5'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                        const TextSpan(text: ':'),
                      ]
                    ),
                  ),
                  sizedBoxHigh(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        '1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(
                          child: Text(
                            'pi_6'.tr,
                            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
                          )
                      )
                    ],
                  ),
                  sizedBoxLow(),
                  Text(
                    'pi_7'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxHigh(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        const Text(
                        '2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(
                          child: Text(
                            'pi_8'.tr,
                            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
                          )
                      )
                    ],
                  ),
                  sizedBoxLow(),
                  Text(
                    'pi_9'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                  sizedBoxHigh(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                     const Text(
                        '3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: kred),
                      ),
                     const SizedBox(width: 16,),
                      Expanded(
                        child: Text(
                          'pi_10'.tr,
                          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
                        )
                      )
                    ],
                  ),
                  sizedBoxLow(),
                  Text(
                    'pi_11'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                ],
                title: 'pi_12'.tr,
                subtitle: 'important'.tr,
                color: kred,
                subtitleColor: kredDark
              ),
              sizedBoxHigh(),
              Text(
                'pi_13'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'pi_14'.tr),
                      TextSpan(text: 'pi_15'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'pi_16'.tr),
                      TextSpan(text: 'pi_17'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'pi_18'.tr),
                      TextSpan(text: 'pi_19'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'pi_20'.tr),
                      TextSpan(text: 'pi_21'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'pi_22'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'pi_23'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              Text(
                'pi_24'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxHigh(),
              Text(
                'pi_25'.tr,
                style: Get.textTheme.headline2,
              ),
              sizedBoxHigh(),
              Text(
                'pi_26'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'pi_27'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'pi_28'.tr),
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'pi_29'.tr),
                      TextSpan(text: 'pi_30'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'pi_31'.tr)
                    ]
                ),
              ),
              sizedBoxLow(),
              Text(
                'pi_32'.tr,
                style: Get.textTheme.bodyText1,
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'pi_33'.tr),
                      TextSpan(text: 'pi_34'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'pi_35'.tr)
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'pi_36'.tr),
                      TextSpan(text: 'pi_37'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'pi_38'.tr)
                    ]
                ),
              ),
              sizedBoxLow(),
              RichText(
                text: TextSpan(
                    style: Get.textTheme.bodyText1,
                    children:  [
                      TextSpan(text: 'pi_39'.tr),
                      TextSpan(text: 'pi_40'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'pi_41'.tr)
                    ]
                ),
              ),
              sizedBoxHigh(),
              CustomButton(
                  title: 'OK',
                  color: kgreyDark,
                  handler: () {
                    AuthService().upgradeData('pi-1');
                    Get.back();
                  }
              )
            ],
          ),
        )
      ]
  );
}



