import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/pages/create_acc_page.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';
import 'package:practical_mnemonic/widgets/custom_tile.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'codes_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = FirebaseAuth.instance.currentUser!;
    final creatingTime = user.metadata.creationTime!;

    String day, month, year = '';
    if(creatingTime.day < 10) {
      day = '0' + creatingTime.day.toString();
    } else {
      day = creatingTime.day.toString();
    }

    if(creatingTime.month < 10) {
      month = '0' + creatingTime.month.toString();
    } else {
      month = creatingTime.month.toString();
    }

    year = creatingTime.year.toString();

    final creationStringDate = '$day.$month.$year';

    String iconPath = '';
    if(user.isAnonymous) {

    }
    else if(user.providerData.first.providerId == 'facebook.com') {
      iconPath = 'assets/fb_logo.svg';
    } else if(user.providerData.first.providerId == 'google.com') {
      iconPath = 'assets/google_logo.svg';
    } else if(user.providerData.first.providerId == 'password') {
      iconPath = 'assets/email_logo.svg';
    }

    String parseTime(int seconds) {
      String result = '';
      int h, m, s;

      final Map<String, Map<String, String>> values = {
        'ru': {
          's': 'с',
          'm': 'м',
          'h': 'ч',
        },
        'en': {
          's': 's',
          'm': 'm',
          'h': 'h',
        }
      };

      h = seconds ~/ 3600;

      m = ((seconds - h * 3600)) ~/ 60;

      s = seconds - (h * 3600) - (m * 60);

      if(h == 0) {
        result = '$m ${values['data'.tr]!['m']}. $s ${values['data'.tr]!['s']}.';
      } else {
        result = '$h ${values['data'.tr]!['h']}. $m ${values['data'.tr]!['m']}. $s ${values['data'.tr]!['s']}.';
      }

      return result;
    }

    int countOfAchieves = 0;
    if(GetStorage().read('total_count_3k')) countOfAchieves++;
    if(GetStorage().read('total_count_500')) countOfAchieves++;
    if(GetStorage().read('total_count_100')) countOfAchieves++;
    if(GetStorage().read('course_done')) countOfAchieves++;
    if(GetStorage().read('practical_done')) countOfAchieves++;
    if(GetStorage().read('100_word_number')) countOfAchieves++;

    return Scaffold(
      backgroundColor: kgreyBG,
      appBar: AppBar(
        backgroundColor: kgrey,
        title: Text('profile'.tr, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            user.isAnonymous
              ? CustomTile(
              title: 'create_an_account'.tr,
              iconPath: iconPath,
              leadingSize: 30,
              handler: () async {
                Get.to(const CreateAccountPage(isFromAnon: true), transition: Transition.rightToLeft);
              },
              isSubtitle: true,
              subtitle: 'create_an_acc_to_save_progress'.tr,
            )
            :  CustomTile(
                title: user.email!,
                iconPath: iconPath,
                leadingSize: 30,
                handler: () {

                },
                isSubtitle: true,
                subtitle: '${'registration_date'.tr}: $creationStringDate',
            ),
           // sizedBoxLow(),
            //const LanguageDropDown(),
            sizedBoxLow(),
            CustomTile(
              iconPath: '',
              title: 'view_codes'.tr,
              customLeading: const Icon(Icons.code, color: Colors.black, size: 45,),
              handler: () => Get.to(const CodesPage(), transition: Transition.rightToLeft),
            ),
            sizedBoxLow(),
            CustomTile(
              title: 'achievements'.tr,
              iconPath: 'assets/achieve_icon.svg',
              handler: () => Get.to(const AchievesPage(), transition: Transition.rightToLeft),
              doneCount: countOfAchieves,
              maxCount: 6,
              isTrailing: true,
            ),
            sizedBoxLow(),
            // CustomTile(
            //     title: 'Оставить отзыв',
            //     iconPath: 'assets/picture_code_icon.svg',
            //     handler: () {}
            // ),
            // sizedBoxLow(),
            // CustomTile(
            //     title: 'disable_ads'.tr,
            //     iconPath: 'assets/no_ads.svg',
            //     handler: () {}
            // ),
            sizedBoxLow(),
            CustomTile(
                title: 'get_prem'.tr,
                iconPath: 'assets/diamond.svg',
                handler: () {

                  Get.to(const PremPage(), transition: Transition.rightToLeft);
                  // final offerings = await PurchaseApi.fetchOffers();
                  //
                  // if(offerings.isEmpty) {
                  //   showSnackBar('No plans found', kred, );
                  // } else {
                  //   final offer = offerings.first;
                  //   print(offer.toString());
                  // }
                }
            ),
            sizedBoxLow(),
            CustomTile(
                title: 'privacy_policy'.tr,
                iconPath: 'assets/private_policy_svg.svg',
                handler: () => Get.to(const WebView(
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: 'https://pages.flycricket.io/mnemopro/privacy.html',
                ))
                //
            ),
            sizedBoxHigh(),
            Text(
              'Statistics',
              style: Get.textTheme.headline2,
            ),
            sizedBoxHigh(),
            _buildStatisticRow(GetStorage().read('totalCount').toString(), 'memorized_units_of_information'.tr),
            sizedBoxLow(),
            _buildStatisticRow(parseTime(GetStorage().read('totalTime')), 'total_time'.tr),
          ]
        ),
      )
    );
  }

  _buildStatisticRow(String number, String text) =>  Container(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    width: double.maxFinite,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number,
          style: const TextStyle(fontWeight: FontWeight.bold, color: kgreyDark, fontSize: 40),
        ),
        const SizedBox(width: 16,),
        Text(
          text,
          style: Get.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, color: kblue),
        )
      ],
    ),
  );
}


class PremPage extends StatelessWidget {
  const PremPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreyBG,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('premium'.tr),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(topRight: Radius.circular(18), topLeft: Radius.circular(18)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomButton(title: 'purchase_for_5'.tr, color: kred, handler: (){}),
            sizedBoxLow(),
            TextButton(onPressed: () => Get.back(), child: Text(
              'no_thanks'.tr,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
           Center(
             child: Column(
               children: [
                 SizedBox(height: 150, width: 150, child: SvgPicture.asset('assets/diamond.svg',)),
                 Text(
                   'what_you_will_get'.tr,
                   style: const TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.black,
                     fontSize: 30,
                   ),
                 ),
                 Text(
                   'forever'.tr,
                   style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.black,
                       decoration: TextDecoration.underline
                   ),
                 ),
               ],
             ),
           ),
            sizedBoxHigh(),
            sizedBoxHigh(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: kred,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), topRight: Radius.circular(18))
                  ),
                  child: Text(
                    'prem_title1'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text1_1'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text1_2'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                )
              ],
            ),
            sizedBoxHigh(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: kred,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), topRight: Radius.circular(18))
                  ),
                  child: Text(
                    'prem_title2'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text2_1'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text2_2'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                )
              ],
            ),
            sizedBoxHigh(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: kred,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), topRight: Radius.circular(18))
                  ),
                  child: Text(
                    'prem_title3'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text3_1'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                ),
              ],
            ),
            sizedBoxHigh(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 240,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: kblue,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), topRight: Radius.circular(18))
                  ),
                  child: Text(
                    'prem_title4'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text4_1'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text4_2'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text4_3'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                ),
              ],
            ),
            sizedBoxHigh(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: kgreyDark,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), topRight: Radius.circular(18))
                  ),
                  child: Text(
                    'prem_title5'.tr,
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                sizedBoxLow(),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    'prem_text5_1'.tr,
                    style: Get.textTheme.bodyText1,
                  ),
                ),
              ],
            ),
            sizedBoxHigh(),
            sizedBoxHigh(),
            sizedBoxHigh(),
            sizedBoxHigh(),
            sizedBoxHigh(),
          ],
        ),
      ),
    );
  }
}

//
// class PurchaseApi {
//
//   static const _apiKey = '';
//
//   static Future init() async {
//     await Purchases.setDebugLogsEnabled(true);
//     await Purchases.setup(_apiKey);
//   }
//
//   static Future<List<Offering>> fetchOffers() async {
//     try {
//       final offerings = await Purchases.getOfferings();
//       final current = offerings.current;
//       return current == null ? [] : [current];
//     } on PlatformException catch (e) {
//       return [];
//     }
//   }
// }



// class LanguageDropDown extends StatefulWidget {
//   const LanguageDropDown({Key? key}) : super(key: key);
//
//   @override
//   _LanguageDropDownState createState() => _LanguageDropDownState();
// }
//
// class _LanguageDropDownState extends State<LanguageDropDown> {
//
//   Map<String, String> languageMap = {
//     'Русский': 'assets/flags/europe/flag3_8.svg',
//     'English': 'assets/flags/europe/flag3_3.svg',
//     'Spanish': 'assets/flags/europe/flag3_31.svg',
//   };
//
//   List<String> languageTitles = [
//     'Русский',
//     'English',
//     'Spanish',
//   ];
//
//   String selectedValue = 'Русский';
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButtonHideUnderline(
//       child: DropdownButton2(
//         dropdownDecoration: const BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(18), bottomRight: Radius.circular(18))
//         ),
//         items: languageTitles.map((item) =>
//           DropdownMenuItem<String>(
//             value: item,
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 SizedBox(
//                     height: 15,
//                     width: 25,
//                   child: SvgPicture.asset(languageMap[item].toString(), fit: BoxFit.cover)
//                 ),
//                 const SizedBox(width: 8,),
//                 Text(item, style: const TextStyle(fontSize: 14))
//               ]
//             )
//           )).toList(),
//         customButton: ListTile(
//           tileColor: Colors.white,
//           contentPadding: const EdgeInsets.symmetric(horizontal: 20),
//           shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
//           trailing: const Icon(Icons.arrow_drop_down,  color: kgreyDark, size: 30,),
//           leading: SizedBox(
//             height: 30,
//             width: 50,
//             child: SvgPicture.asset(languageMap[selectedValue].toString(), fit: BoxFit.cover),
//           ),
//           title: Text(
//             selectedValue,
//             style: Get.textTheme.bodyText1,
//           ),
//           subtitle: const Text(
//             'Язык',
//             style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: kgreyDark),
//           ),
//         ),
//         value: selectedValue,
//         onChanged: (value) {
//           setState(() {
//             selectedValue = value as String;
//           });
//         },
//         itemHeight: 50,
//         dropdownMaxHeight: 200,
//         scrollbarAlwaysShow: true,
//       ),
//     );
//   }
// }


class AchievesPage extends StatelessWidget {
  const AchievesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int maxCount = 0;
    if(GetStorage().read('total_count_3k')) {
      maxCount = 3000;
    } else if(GetStorage().read('total_count_500')){
      maxCount = 3000;
    } else if(GetStorage().read('total_count_100')) {
      maxCount = 500;
    } else {
      maxCount = 100;
    }
    int currentCount = GetStorage().read('totalCount');

    return Scaffold(
        backgroundColor: kgreyBG,
        appBar: AppBar(
          backgroundColor: kgrey,
          title: Text('achievements'.tr, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
          actions: [
            IconButton(
              onPressed: () async => await Get.dialog(Dialog(
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                child:  Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'achievements_explanation'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
              icon: const Icon(Icons.question_mark , color: Colors.white,),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
             Container(
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(18)
               ),
               padding: const EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     'memorized_units_of_information'.tr,
                     style: Get.textTheme.bodyText1,
                   ),
                   sizedBoxHigh(),
                   SizedBox(
                     height: 100,
                     child: SingleChildScrollView(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           SvgPicture.asset(GetStorage().read('total_count_100') ? 'assets/achieves/total_count_100.svg' : 'assets/achieves/total_count_100_disabled.svg', height: 100,),
                           SvgPicture.asset(GetStorage().read('total_count_500') ? 'assets/achieves/total_count_500.svg' : 'assets/achieves/total_count_500_disabled.svg', height: 100,),
                           SvgPicture.asset(GetStorage().read('total_count_3k') ? 'assets/achieves/total_count_3k.svg' : 'assets/achieves/total_count_3k_disabled.svg', height: 100,),
                         ],
                       ),
                     ),
                   ),
                   sizedBoxHigh(),
                   Column(
                     children: [
                       SizedBox(
                         height: 20,
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(50),
                           child: LinearProgressIndicator(
                             color: Colors.black,
                             backgroundColor: kgreyLinearPB,
                             value: currentCount / maxCount,
                           ),
                         ),
                       ),
                       const SizedBox(height: 8),
                       Text(
                         '${GetStorage().read('totalCount')}/$maxCount',
                         style: Get.textTheme.headline2,
                       ),
                     ],
                   )
                 ],
               ),
             ),
              sizedBoxHigh(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18)
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(GetStorage().read('100_word_number') ? 'assets/achieves/100_word_number.svg' : 'assets/achieves/100_word_number_disabled.svg', height: 100,),
                    const SizedBox(width: 30,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            'achieve1_title'.tr,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                          ),
                          const SizedBox(height: 8,),
                          Text(
                            'achieve1_desc'.tr,
                            style: Get.textTheme.bodyText1,
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
              sizedBoxHigh(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18)
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(GetStorage().read('course_done') ? 'assets/achieves/course_done.svg' : 'assets/achieves/course_done_disabled.svg', height: 100,),
                    const SizedBox(width: 30,),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'achieve2_title'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                            ),
                            const SizedBox(height: 8,),
                            Text(
                              'achieve2_desc'.tr,
                              style: Get.textTheme.bodyText1,
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
              sizedBoxHigh(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18)
                ),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(GetStorage().read('practical_done') ? 'assets/achieves/practical_done.svg' : 'assets/achieves/practical_done_disabled.svg', height: 100,),
                    const SizedBox(width: 30,),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              'achieve3_title'.tr,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
                            ),
                            const SizedBox(height: 8,),
                            Text(
                              'achieve3_desc'.tr,
                              style: Get.textTheme.bodyText1,
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            ],
          )
        )
    );
  }
}

