import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/auth_service.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/pages/codes_page_detail.dart';
import 'package:practical_mnemonic/widgets/custom_tile.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import '../utils/show_snackbar.dart';

class CodesPage extends StatelessWidget {
  const CodesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    _showDialog() => Get.dialog(AlertDialog(
        title: Text(
          'reset_vew_codes_title'.tr,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
          ),
        ),
        content: Text(
          'reset_vew_codes_text'.tr,
          style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        backgroundColor: kgreyDark,
        elevation: 0,
        actions: [
          TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () => Get.back(result: false),
              child: Text(
                'no'.tr,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              )
          ),
          TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () => Get.back(result: true),
              child:  Text(
                'yes'.tr,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              )
          )
        ])
    );

    void _resetCodes() async {
      bool isRestore = await _showDialog();
      if(isRestore) {
        try {
          await AuthService().updateViewCodes();
          showSnackBar('reset_view_codes_success'.tr, kblue, duration: 2);
        } catch (e) {
          showSnackBar('error'.tr, kred, duration: 2);
        }
      }
    }

    final box = GetStorage();
    final isPr = box.read('isPr');

    return Scaffold(
        backgroundColor: kgreyBG,
        appBar: AppBar(
          backgroundColor: kgrey,
          title: Text('view_codes'.tr, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
          actions: [
            IconButton(
              onPressed: _resetCodes,
              icon: const Icon(Icons.restart_alt, color: kred, size: 30,)
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
              children: [
               box.read('lec4_4') ? CustomTile(
                  title: 'nac'.tr,
                  iconPath: '',
                  leadingSize: 30,
                  handler: () => Get.to(CodesPageDetail(title: 'nac'.tr, typeOfCodes: 'numbers',), transition: Transition.rightToLeft),
                  customLeading: const Text('99', style: TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 30),)
                ) : CustomTileDisabled(
                 title: 'nac'.tr,
                 dialogWidgetText:  [
                   TextSpan(text: 'to_open_this_view_code_nac'.tr),
                 ],
               ),
                sizedBoxLow(),
                !isPr ? CustomTileDisabled(
                  title: 'characteristics'.tr,
                  isShowPremDialog: true,
                ) : box.read('practical5_1') ? CustomTile(
                    title: 'characteristics'.tr,
                    iconPath: '',
                    leadingSize: 30,
                    handler: () => Get.to(CodesPageDetail(title: 'characteristics'.tr, typeOfCodes: 'characteristics',), transition: Transition.rightToLeft),
                    customLeading: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 30),
                        children: [
                          TextSpan(text: '9', style: TextStyle(color: kred)),
                          TextSpan(text: '99'),
                        ]
                      ),
                    )
                ) : CustomTileDisabled(
                  title: 'characteristics'.tr,
                  dialogWidgetText:  [
                    TextSpan(text: 'to_open_this_view_code_char'.tr),
                  ],
                ),
                'data'.tr == 'ru' ? sizedBoxLow() : Container(),
                'data'.tr == 'ru' ?
                !isPr ? const CustomTileDisabled(
                  title: 'Русские буквы',
                  isShowPremDialog: true,
                ) : box.read('lec6_5') ? CustomTile(
                    title: 'Русские буквы',
                    iconPath: '',
                    handler: () => Get.to(const CodesPageDetail(title: 'Русские буквы', typeOfCodes: 'rusAlphabet',), transition: Transition.rightToLeft),
                    customLeading: const Text('А-Я', style: TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 30),)
                  ) : CustomTileDisabled(
                   title: 'Русские буквы',
                   dialogWidgetText:  [
                     TextSpan(text: 'to_open_this_view_code_char'.tr),
                   ],
                 )
                : Container(),
                sizedBoxLow(),
                !isPr ? CustomTileDisabled(
                  title: 'english_letters'.tr,
                  isShowPremDialog: true,
                ) : box.read('lec6_5') ? CustomTile(
                  title: 'english_letters'.tr,
                  iconPath: '',
                  handler: () => Get.to(CodesPageDetail(title: 'english_letters'.tr, typeOfCodes: 'enAlphabet',), transition: Transition.rightToLeft),
                  customLeading: const Text('A-Z', style: TextStyle(fontWeight: FontWeight.bold, color: kblue, fontSize: 30),)
                ) : CustomTileDisabled(
                  title: 'english_letters'.tr,
                  dialogWidgetText:  [
                    TextSpan(text: 'to_open_this_view_code_other'.tr),
                  ],
                ),
                sizedBoxLow(),
                !isPr ? CustomTileDisabled(
                  title: 'special_characters'.tr,
                  isShowPremDialog: true,
                ) : box.read('lec6_5') ? CustomTile(
                  title: 'special_characters'.tr,
                  iconPath: '',
                  handler: () => Get.to(CodesPageDetail(title: 'special_characters'.tr, typeOfCodes: 'specialSymbols',), transition: Transition.rightToLeft),
                  customLeading: const Text('!~#', style: TextStyle(fontWeight: FontWeight.bold, color: kred, fontSize: 30),)
                ) : CustomTileDisabled(
                  title: 'special_characters'.tr,
                  dialogWidgetText:  [
                    TextSpan(text: 'to_open_this_view_code_other'.tr),
                  ],
                ),
                sizedBoxLow(),
                !isPr ? CustomTileDisabled(
                  title: 'months'.tr,
                  isShowPremDialog: true,
                ) : box.read('lec6_5') ? CustomTile(
                  title: 'months'.tr,
                  iconPath: 'assets/month.svg',
                  handler: () => Get.to(CodesPageDetail(title: 'months'.tr, typeOfCodes: 'months',), transition: Transition.rightToLeft),
                ) : CustomTileDisabled(
                  title: 'months'.tr,
                  dialogWidgetText:  [
                    TextSpan(text: 'to_open_this_view_code_other'.tr),
                  ],
                ),
                sizedBoxLow(),
                !isPr ? CustomTileDisabled(
                  title: 'names'.tr,
                  isShowPremDialog: true,
                ) : box.read('practical6_1') ? CustomTile(
                  title: 'names'.tr,
                  iconPath: 'assets/exercise-icons/name.svg',
                    handler: () => Get.to(CodesPageDetail(title: 'names'.tr, typeOfCodes: 'names',), transition: Transition.rightToLeft),
                  customLeading: const Text('!~#', style: TextStyle(fontWeight: FontWeight.bold, color: kred, fontSize: 30),)
                ) : CustomTileDisabled(
                  title: 'names'.tr,
                  dialogWidgetText:  [
                    TextSpan(text: 'to_open_this_view_code_names'.tr),
                  ],
                ),
              ]
          ),
        )
    );
  }

}

