import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/main.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'create_acc_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool isLoading = false.obs;

    return Obx(() =>
      IgnorePointer(
        ignoring: isLoading.value,
        child: Scaffold(
        backgroundColor: kredBG,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0).copyWith(top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(

                  children: [
                    Text(
                      'welcome'.tr,
                      style: Get.textTheme.headline2,
                      textAlign: TextAlign.center,
                    ),
                    sizedBoxHigh(),
                    Text(
                      'welcome_text'.tr,
                      textAlign: TextAlign.center,
                      style: Get.textTheme.bodyText1,
                    ),
                    sizedBoxHigh(),
                    _buildRow('assets/practic-icons/usa.svg', 'us_states'.tr),
                    sizedBoxLow(),
                    _buildRow('assets/practic-icons/planet.svg', 'countries_capitals'.tr),
                    sizedBoxLow(),
                    _buildRow('assets/practic-icons/periodic_table_red_blue.svg', 'periodic_table'.tr),
                    sizedBoxLow(),
                    const Text(
                      '...',
                      style: TextStyle(fontWeight: FontWeight.bold, color: kred, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8,),
                    Text(
                      'welcome_text_below'.tr,
                      style: const TextStyle(fontWeight: FontWeight.bold, color: kred, fontSize: 18),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: Get.textTheme.bodyText1,
                          children: [
                            TextSpan(text: 'splash_text_1'.tr),
                            TextSpan(text: 'splash_text_2'.tr, style: const TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'splash_text_3'.tr),
                          ]
                      ),
                    ),
                    sizedBoxHigh(),
                    CustomButton(title: 'CREATE_AN_ACCOUNT'.tr, color: kred, handler: () => Get.to(const CreateAccountPage(), transition: Transition.rightToLeft)),
                    const SizedBox(height: 8,),
                    Obx(() => isLoading.value ? const Center(child: CircularProgressIndicator(color: kred,)) :
                      TextButton(
                        onPressed: () async {
                          isLoading.value = true;
                          String res = await AuthService().signAnon();
                          isLoading.value = false;
                          if(res != 'success') {
                            Get.showSnackbar(GetSnackBar(message: res, duration: const Duration(seconds: 1), snackPosition: SnackPosition.TOP,));
                          } else {
                            Get.off(HomePage(), transition: Transition.rightToLeft);
                          }
                        },
                        child:  Text(
                        'LATER'.tr,
                        style: const TextStyle(fontWeight: FontWeight.bold, color: kred, fontSize: 18),
                      )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
  ),
      ),
    );
  }

  _buildRow(iconPath, iconText) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 40, child: SvgPicture.asset(iconPath, height: 40, width: 40,)),
      const SizedBox(width: 16,),
      Text(iconText, style: Get.textTheme.bodyText1,),
    ],
  );
}
