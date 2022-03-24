import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/constants/headers.dart';
import 'package:practical_mnemonic/controllers/pairs_controller.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_1.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_10.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_11.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_12.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_2.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_3.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_4.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_5.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_6.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_7.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_8.dart';
import 'package:practical_mnemonic/course_pages/module1/lec1_9.dart';
import 'package:practical_mnemonic/course_pages/module1/practical_pairs1_info.dart';
import 'package:practical_mnemonic/course_pages/module1/practical_pairs_info.dart';
import 'package:practical_mnemonic/course_pages/module2/lec2_1.dart';
import 'package:practical_mnemonic/course_pages/module2/lec2_2.dart';
import 'package:practical_mnemonic/course_pages/module2/practical_chain_info.dart';
import 'package:practical_mnemonic/course_pages/module2/practical_matreshka_chain_info.dart';
import 'package:practical_mnemonic/course_pages/module2/practical_struct_info.dart';
import 'package:practical_mnemonic/course_pages/module3/lec3_1.dart';
import 'package:practical_mnemonic/course_pages/module3/lec3_2.dart';
import 'package:practical_mnemonic/course_pages/module3/lec3_3.dart';
import 'package:practical_mnemonic/course_pages/module3/prac_cfo_info.dart';
import 'package:practical_mnemonic/course_pages/module3/prac_ukraine_info.dart';
import 'package:practical_mnemonic/course_pages/module3/pracal_poem_info.dart';
import 'package:practical_mnemonic/course_pages/module3/practical_association_info.dart';
import 'package:practical_mnemonic/course_pages/module3/practical_codes_states_info.dart';
import 'package:practical_mnemonic/course_pages/module3/practical_states1_info.dart';
import 'package:practical_mnemonic/course_pages/module4/lec4_1.dart';
import 'package:practical_mnemonic/course_pages/module4/lec4_2.dart';
import 'package:practical_mnemonic/course_pages/module4/lec4_4.dart';
import 'package:practical_mnemonic/course_pages/module4/lec4_5.dart';
import 'package:practical_mnemonic/course_pages/module4/prac_locii1_info.dart';
import 'package:practical_mnemonic/course_pages/module4/prac_number1_info.dart';
import 'package:practical_mnemonic/course_pages/module4/practic_table_info.dart';
import 'package:practical_mnemonic/course_pages/module4/practical_table_codes_info.dart';
import 'package:practical_mnemonic/course_pages/module5/lec5_1.dart';
import 'package:practical_mnemonic/course_pages/module5/lec5_2.dart';
import 'package:practical_mnemonic/course_pages/module5/lec5_3.dart';
import 'package:practical_mnemonic/course_pages/module5/prac_90_info.dart';
import 'package:practical_mnemonic/course_pages/module5/prac_dates_info.dart';
import 'package:practical_mnemonic/course_pages/module5/prac_tel_info.dart';
import 'package:practical_mnemonic/course_pages/module6/lec6_1.dart';
import 'package:practical_mnemonic/course_pages/module6/lec6_3.dart';
import 'package:practical_mnemonic/course_pages/module6/lec6_4.dart';
import 'package:practical_mnemonic/course_pages/module6/lec6_5.dart';
import 'package:practical_mnemonic/course_pages/module6/practic_en_words_info.dart';
import 'package:practical_mnemonic/course_pages/module6/practic_names_info.dart';
import 'package:practical_mnemonic/course_pages/module7/lec7_1.dart';
import 'package:practical_mnemonic/course_pages/module7/lec7_2.dart';
import 'package:practical_mnemonic/course_pages/module7/lec7_3.dart';
import 'package:practical_mnemonic/course_pages/module7/lec7_4.dart';
import 'package:practical_mnemonic/course_pages/module7/lec7_5.dart';
import 'package:practical_mnemonic/course_pages/module7/lec7_6.dart';
import 'package:practical_mnemonic/course_pages/module7/lec7_7.dart';
import 'package:practical_mnemonic/course_pages/module7/practic_flags_info.dart';
import 'package:practical_mnemonic/course_pages/module7/practic_poem2_info.dart';
import 'package:practical_mnemonic/utils/showPremDialog.dart';
import 'package:practical_mnemonic/widgets/custom_button.dart';

import '../course_pages/module4/lec4_3.dart';
import '../course_pages/module6/lec6_2.dart';



class CoursePage extends StatelessWidget {
  const CoursePage({Key? key, required this.result}) : super(key: key);

  final dynamic result;

  @override
  Widget build(BuildContext context) {

     showCongratDialog(String moduleName) async => await Get.dialog(Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Container(
          decoration: BoxDecoration(
            color: kblueDark,
            borderRadius: BorderRadius.circular(18),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'congratulations'.tr,
                style: Get.textTheme.headline2!.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              sizedBoxLow(),
              moduleName == 'done' ? Text(
                'course_done'.tr,
                style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ) : Text(
                'module_opened'.trParams({'m': moduleName}),
                style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              moduleName == '2' ? Column(
                children: [
                  sizedBoxHigh(),
                  Text(
                    'exercises_opened'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  )
                ],
              ) : Container(),
              moduleName == '4' ? Column(
                children: [
                  sizedBoxHigh(),
                  Text(
                    'exercises_opened'.tr,
                    style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  )
                ],
              ) : Container(),
            ],
          )
      ),
    ));


     final paths = [
       'assets/module1_picture.svg',
       'assets/module2_picture.svg',
       'assets/module3_picture.svg',
       'assets/module4_picture.svg',
       'data'.tr == 'ru' ? 'assets/module5_picture.svg' : 'assets/breaking_disk.svg',
       'assets/module6_picture.svg',
       'assets/module7_picture.svg',
     ];


    if(result != null) {
      WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        if(Get.find<PairsController>().nextPracticalKey.isNotEmpty) showCongratDialog(result);
        Get.find<PairsController>().nextPracticalKey = '';
      });
    }

    final box = GetStorage();

     // // TODO: Add _bannerAd
     // late BannerAd _bannerAd;
     //
     // // TODO: Add _isBannerAdReady
     // RxBool _isBannerAdReady = false.obs;
     //
     // _bannerAd = BannerAd(
     //   adUnitId: AdHelper.bannerAdUnitId,
     //   request: AdRequest(),
     //   size: AdSize.banner,
     //   listener: BannerAdListener(
     //     onAdLoaded: (_) {
     //       _isBannerAdReady.value = true;
     //     },
     //     onAdFailedToLoad: (ad, err) {
     //       print('Failed to load a banner ad: ${err.message}');
     //       _isBannerAdReady.value = false;
     //       ad.dispose();
     //     },
     //   ),
     // );
     //
     // _bannerAd.load();



    return Scaffold(
      appBar: AppBar(
        backgroundColor: kred,
        title: Text('course'.tr, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.separated(
            itemCount: 7,
            separatorBuilder: (_, index) => const SizedBox(height: 50),
            padding: const EdgeInsets.symmetric(vertical: 30),
            itemBuilder: (_, index) {
              RxBool isEnable = RxBool(box.read('lec${index + 1}_1'));

              box.listenKey('lec${index+1}_1', (_) {
                isEnable.value = true;
              });

              bool isPr = true;
              if(index >= 4) {
                isPr = box.read('isPr');
              }

              RxDouble cpiCount = 0.0.obs;

              int count = 0;
              for(int i = 1; i <= theoryPages[index].length; i++) {
                if(box.read('lec${index+1}_$i')) count++;
              }
              for(int i = 1; i <= practicalPages[index].length; i++) {
                if(box.read('practical${index+1}_$i')) count++;
              }

              cpiCount.value = count / (theoryPages[index].length + practicalPages[index].length);


              return Obx( () =>
                 Column(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: GestureDetector(
                        onTap: () async {
                          !isEnable.value && isPr ? await Get.dialog(
                            Dialog(
                              elevation: 0,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff1B1B1B),
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                      children: [
                                        TextSpan(text: 'module_opened_when'.tr),
                                        index == 3 || index == 4
                                          ? TextSpan(text: 'practices'.tr, style: const TextStyle(color: kblue))
                                          : TextSpan(text: 'lectures'.tr, style: const TextStyle(color: kred)),
                                        TextSpan(text: 'prev_module'.tr)
                                      ]
                                      )
                                    ),
                                )
                              ),
                            ) : !isPr ? showPremDialog()
                          : await Get.dialog(
                            Dialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: kModuleDialogBg,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  child: ModuleDialog(index: index)
                              ),
                            ),
                          );
                        },
                        child: !isEnable.value || !isPr
                        ? Stack(
                          fit: StackFit.expand,
                          children: [
                            Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: kgreyDark,
                                      shape: BoxShape.circle,
                                    ),
                                    constraints: const BoxConstraints.expand(),
                                    padding: const EdgeInsets.all(16),
                                    child: const Icon(
                                      Icons.lock, color: Colors.black, size: 60,
                                    ),
                                  ),
                                )
                            ),
                            const CircularProgressIndicator(
                              strokeWidth: 10,
                              value: 0.0,
                              color: Color(0xffc2c2c2),
                              backgroundColor: Color(0xffc2c2c2),
                            )
                          ],
                        ) : Stack(
                          fit: StackFit.expand,
                          children: [
                            Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color(0xff4B4B4B),
                                      shape: BoxShape.circle,
                                    ),
                                    constraints: const BoxConstraints.expand(),
                                    padding: const EdgeInsets.all(16),
                                    child: SvgPicture.asset(paths[index]),
                                  ),
                                )
                            ),
                            CircularProgressIndicator(
                              strokeWidth: 10,
                              value: cpiCount.value,
                              color: kgrey,
                              backgroundColor: const Color(0xffc2c2c2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '${'module'.tr} ${index+1}',
                      style: const TextStyle(
                          color: kgreyDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),
                    )
                  ],
                ),
              );
            },
          ),
          // Obx(() => _isBannerAdReady.value ?
          // Positioned(
          //     top: 0,
          //     left: 0,
          //     right: 0,
          //     child: Container(color: Colors.black, child: SizedBox(height: 50, child: AdWidget(ad: _bannerAd),))
          // ) : Container(),
          // ),
        ],
      )
  );
  }
}


class ModuleDialog extends StatefulWidget {
  const ModuleDialog({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  _ModuleDialogState createState() => _ModuleDialogState();
}

class _ModuleDialogState extends State<ModuleDialog> {
  int theorySelectedIndex = 0;
  int practiceSelectedIndex = -1;

  final int rowHeight = 50;


  // // TODO: Add _interstitialAd
  // InterstitialAd? _interstitialAd;
  //
  // // TODO: Add _isInterstitialAdReady
  // bool _isInterstitialAdReady = false;
  //
  // // TODO: Implement _loadInterstitialAd()
  // void loadInterstitialAd() {
  //   InterstitialAd.load(
  //     adUnitId: AdHelper.interstitialAdUnitId,
  //     request: AdRequest(),
  //     adLoadCallback: InterstitialAdLoadCallback(
  //       onAdLoaded: (ad) {
  //         _interstitialAd = ad;
  //
  //         ad.fullScreenContentCallback = FullScreenContentCallback(
  //           onAdDismissedFullScreenContent: (ad) {
  //
  //           },
  //         );
  //
  //         _isInterstitialAdReady = true;
  //       },
  //       onAdFailedToLoad: (err) {
  //         print('Failed to load an interstitial ad: ${err.message}');
  //         _isInterstitialAdReady = false;
  //       },
  //     ),
  //   );
  // }




  @override
  Widget build(BuildContext context) {
    // loadInterstitialAd();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildTitle(
          practiceSelectedIndex == - 1
          ? Headers.theoryHeaders['data'.tr]![widget.index][theorySelectedIndex]
          : Headers.practicalHeaders['data'.tr]![widget.index][practiceSelectedIndex]
        ),
        const SizedBox(height: 20),
        buildSubtitle('theory'.tr),
        const SizedBox(height: 20),
        makeTheoryRow(widget.index),
        const SizedBox(height: 20),
        buildSubtitle('practice'.tr),
        const SizedBox(height: 20),
        makePracticeRow(widget.index),
        const SizedBox(height: 20),
        CustomButton(
          title: 'start'.tr,
          color: practiceSelectedIndex == -1 ? kred : kblue,
          handler: () {
            navigator!.pop();
            // if (_isInterstitialAdReady) {
            //   _interstitialAd?.show();
            // }

            if(practiceSelectedIndex == - 1) {
              Get.to(theoryPages[widget.index][theorySelectedIndex], transition: Transition.rightToLeft);
            } else {
              Get.to(practicalPages[widget.index][practiceSelectedIndex], transition: Transition.rightToLeft);
            }
        })
      ],
    );
  }

  Widget buildTitle(String title) => Center(
    child: SizedBox(
      height: 60,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    ),
  );

  Widget buildSubtitle(String title) => Text(
    title,
    style: const TextStyle(
        fontSize: 20,
        color: kgrey,
        fontWeight: FontWeight.bold
    ),
  );

  Widget makeTheoryRow(int moduleIndex) => SizedBox(

    height: rowHeight.toDouble(),
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, j) {
          bool isEnable = GetStorage().read('lec${moduleIndex + 1}_${j+1}');
            return GestureDetector(
              onTap: () {
                if(isEnable) {
                  setState(() {
                  theorySelectedIndex = j;
                  practiceSelectedIndex = -1;
                });
                }
              },
              child: isEnable ? Container(
                width: rowHeight.toDouble(),
                height: rowHeight.toDouble(),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: j == theorySelectedIndex ? kred : kredDark
                ),
                child: Center(
                    child: Text(
                      '${j + 1}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )
                ),
              ) : Container(
                  width: rowHeight.toDouble(),
                  height: rowHeight.toDouble(),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: const Center(
                      child: Icon(
                        Icons.lock,
                        color: Colors.black,
                        size: 25,
                      )
                  )
              )
            );

        },
        separatorBuilder: (context, j) => const Center(
          child: SizedBox(
              width: 30,
              child: CustomPaint(
                  foregroundPainter: DashedLinePainter(
                      Colors.black
                  )
              )
          ),
        ),
        itemCount: Headers.theoryHeaders['data'.tr]![moduleIndex].length
    ),
  );

  Widget makePracticeRow(int moduleIndex) => SizedBox(
    height: rowHeight.toDouble(),
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: Headers.practicalHeaders['data'.tr]![moduleIndex].length,
      separatorBuilder: (context, j) =>
          const Center(
            child: SizedBox(
                width: 30,
                child: CustomPaint(
                    foregroundPainter: DashedLinePainter(
                        Colors.black
                    )
                )
            ),
          ),
      itemBuilder: (context, j) {
        bool isEnable = GetStorage().read('practical${moduleIndex + 1}_${j+1}');
          return GestureDetector(
            onTap: () {
              if(isEnable) {
                setState(() {
                theorySelectedIndex = -1;
                practiceSelectedIndex = j;
              });
              }
            },
            child: isEnable ? Container(
              width: rowHeight.toDouble(),
              height: rowHeight.toDouble(),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: j == practiceSelectedIndex ? kblue : kblueDark
              ),
              child: Center(
                  child: Text(
                    '${j + 1}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )
              ),
            ) : Container(
              width: rowHeight.toDouble(),
              height: rowHeight.toDouble(),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
              ),
              child: const Center(
                  child: Icon(
                    Icons.lock,
                    color: Colors.black,
                    size: 25,
                  )
              )
          )
        );
      },
    ),
  );


}

class DashedLinePainter extends CustomPainter {
  const DashedLinePainter(this.color);

  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 5, dashSpace = 3, startX = 0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

List<List<Widget>> theoryPages = [
  [
    Lec1_1(title: Headers.theoryHeaders['data'.tr]![0][0]),
    Lec1_2(title: Headers.theoryHeaders['data'.tr]![0][1]),
    Lec1_3(title: Headers.theoryHeaders['data'.tr]![0][2]),
    Lec1_4(title: Headers.theoryHeaders['data'.tr]![0][3]),
    Lec1_5(title: Headers.theoryHeaders['data'.tr]![0][4]),
    Lec1_6(title: Headers.theoryHeaders['data'.tr]![0][5]),
    Lec1_7(title: Headers.theoryHeaders['data'.tr]![0][6]),
    Lec1_8(title: Headers.theoryHeaders['data'.tr]![0][7]),
    Lec1_9(title: Headers.theoryHeaders['data'.tr]![0][8]),
    Lec1_10(title: Headers.theoryHeaders['data'.tr]![0][9]),
    Lec1_11(title: Headers.theoryHeaders['data'.tr]![0][10]),
    Lec1_12(title: Headers.theoryHeaders['data'.tr]![0][11]),
  ],
  [
    Lec2_1(title: Headers.theoryHeaders['data'.tr]![1][0]),
    Lec2_2(title: Headers.theoryHeaders['data'.tr]![1][1]),
  ],
  [
    Lec3_1(title: Headers.theoryHeaders['data'.tr]![2][0]),
    Lec3_2(title: Headers.theoryHeaders['data'.tr]![2][1]),
    Lec3_3(title: Headers.theoryHeaders['data'.tr]![2][2]),
  ],
  [
    Lec4_1(title: Headers.theoryHeaders['data'.tr]![3][0]),
    Lec4_2(title: Headers.theoryHeaders['data'.tr]![3][1]),
    Lec4_3(title: Headers.theoryHeaders['data'.tr]![3][2]),
    Lec4_4(title: Headers.theoryHeaders['data'.tr]![3][3]),
    Lec4_5(title: Headers.theoryHeaders['data'.tr]![3][4]),
  ],
  [
    Lec5_1(title: Headers.theoryHeaders['data'.tr]![4][0]),
    Lec5_2(title: Headers.theoryHeaders['data'.tr]![4][1]),
    Lec5_3(title: Headers.theoryHeaders['data'.tr]![4][2]),
  ],
  [
    Lec6_1(title: Headers.theoryHeaders['data'.tr]![5][0],),
    Lec6_2(title: Headers.theoryHeaders['data'.tr]![5][1],),
    Lec6_3(title: Headers.theoryHeaders['data'.tr]![5][2],),
    Lec6_4(title: Headers.theoryHeaders['data'.tr]![5][3],),
    Lec6_5(title: Headers.theoryHeaders['data'.tr]![5][4],),
  ],
  [
    Lec7_1(title: Headers.theoryHeaders['data'.tr]![6][0]),
    Lec7_2(title: Headers.theoryHeaders['data'.tr]![6][1]),
    Lec7_3(title: Headers.theoryHeaders['data'.tr]![6][2]),
    Lec7_4(title: Headers.theoryHeaders['data'.tr]![6][3]),
    Lec7_5(title: Headers.theoryHeaders['data'.tr]![6][4]),
    Lec7_6(title: Headers.theoryHeaders['data'.tr]![6][5]),
    Lec7_7(title: Headers.theoryHeaders['data'.tr]![6][6]),
  ]
];

List<List<Widget>> practicalPages = [
  [
    PracticalPairs1Info(title: Headers.practicalHeaders['data'.tr]![0][0], maxSecondsStart: 25),
    PracticalPairsInfo(title: Headers.practicalHeaders['data'.tr]![0][1], maxSecondsStart: 15, maxArrayInterval: 6, pairsCount: 50),
    PracticalPairsInfo(title: Headers.practicalHeaders['data'.tr]![0][2], maxSecondsStart: 15, maxArrayInterval: 6, pairsCount: 100, maxGlobalArrayInterval: 3, isLastSetGlobal: false),
    PracticalPairsInfo(title: Headers.practicalHeaders['data'.tr]![0][3], maxSecondsStart: 15, maxArrayInterval: 6, pairsCount: 150, maxGlobalArrayInterval: 4, isLastSetGlobal: false),
  ],
  [
    PracticalChainInfo(title: Headers.practicalHeaders['data'.tr]![1][0], chainCount: 30, maxSecondsStart: 20, maxArrayInterval: 4),
    PracticalMatreshkaChainInfo(title: Headers.practicalHeaders['data'.tr]![1][1], chainCount: 30, maxSecondsStart: 25, maxArrayInterval: 4,),
    PracticalStructInfo(title: Headers.practicalHeaders['data'.tr]![1][2], chainCount: 30, maxSecondsStart: 20, maxArrayInterval: 8,),
    PracticalChainInfo(title: Headers.practicalHeaders['data'.tr]![1][3], chainCount: 50, maxSecondsStart: 15, maxArrayInterval: 6),
    PracticalChainInfo(title: Headers.practicalHeaders['data'.tr]![1][4], chainCount: 100, maxSecondsStart: 15, maxArrayInterval: 6, countOfOnePass: 20,),
  ],
  [
    PracticalAssociationInfo(title: Headers.practicalHeaders['data'.tr]![2][0], chainCount: 30, maxSecondsStart: 30),
    PracticalStates1Info(title: Headers.practicalHeaders['data'.tr]![2][1],),
    PracticalStatesCodeInfo(title: Headers.practicalHeaders['data'.tr]![2][2]),
    'data'.tr == 'ru'
      ? PracticalCFOInfo(title: Headers.practicalHeaders['data'.tr]![2][3], maxSecondsStart: 30, maxArrayInterval: 3)
      : PracticalUkraineInfo(title: Headers.practicalHeaders['data'.tr]![2][3], maxSecondsStart: 30, maxArrayInterval: 3),
    PracticalPoemInfo(title: Headers.practicalHeaders['data'.tr]![2][4])
  ],
  [
    PracticalLociiInfo(title: Headers.practicalHeaders['data'.tr]![3][0], maxArrayInterval: 4, maxSecondsStart: 20, chainCount: 30,),
    PracticalNumber1Info(title: Headers.practicalHeaders['data'.tr]![3][1], maxSecondsStart: 20),
    PracticalTableCodesInfo(title: Headers.practicalHeaders['data'.tr]![3][2],),
    PracticalTableInfo(title: Headers.practicalHeaders['data'.tr]![3][3], maxSecondsStart: 40, pairsCount: 30, maxArrayInterval: 4),
  ],
  [
    Practical90Info(title: Headers.practicalHeaders['data'.tr]![4][0], chainCount: 30, maxSecondsStart: 30, maxArrayInterval: 4),
    PracticalTelInfo(title: Headers.practicalHeaders['data'.tr]![4][1], maxSecondsStart: 60, chainCount: 10, maxArrayInterval: 3,),
    PracticalDatesInfo(title: Headers.practicalHeaders['data'.tr]![4][2], maxSecondsStart: 60,),
  ],
  [
    PracticalNamesInfo(title: Headers.practicalHeaders['data'.tr]![5][0], maxSecondsStart: 30, maxArrayInterval: 4),
    PracticalEnWordsInfo(title: Headers.practicalHeaders['data'.tr]![5][1], maxSecondsStart: 30, maxArrayInterval: 4)
  ],
  [
    PracticalFlagsInfo(title: Headers.practicalHeaders['data'.tr]![6][0], maxSecondsStart: 40, maxArrayInterval: 4),
    PracticalPoem2Info(title: Headers.practicalHeaders['data'.tr]![6][1]),
  ]
];


