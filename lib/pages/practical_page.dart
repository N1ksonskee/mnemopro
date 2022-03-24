import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/practic_pages/dates/exercise_list_dates.dart';
import 'package:practical_mnemonic/practic_pages/pi/exercise_pi_chain_list.dart';
import 'package:practical_mnemonic/practic_pages/states/exercises_list_states.dart';
import 'package:practical_mnemonic/practic_pages/subjects/exercise_list_subjects.dart';
import 'package:practical_mnemonic/practic_pages/table/exercise_list_table.dart';
import 'package:practical_mnemonic/widgets/custom_tile_disabled.dart';
import '../practic_pages/countries/exercise_countries_chain_list.dart';
import '../practic_pages/countries/exercise_list_countries.dart';
import '../practic_pages/face/exercise_face_chain_list.dart';
import '../widgets/custom_tile.dart';

class PracticalPage extends StatelessWidget {
  const PracticalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Map<String, List<String>> titles = {
      'en': [
        'States',
        'Субъекты РФ',
        'World',
        'Periodic Table',
        'Dates',
        '1000 characters of the number π',
        'Flags',
        'Faces',
      ],
      'ru': [
        'Штаты',
        'Субъекты РФ',
        'Мир',
        'Таблица Менделеева',
        'Даты',
        '1000 знаков числа π',
        'Флаги',
        'Лица',
      ]
    };

    RxInt countStates = 0.obs;
    RxInt countSubjects = 0.obs;
    RxInt countWorld = 0.obs;
    RxInt countTable = 0.obs;
    RxInt countDates = 0.obs;

    final box = GetStorage();

    if(box.read('states-dest')) countStates++;
    if(box.read('states-dest-done')) countStates++;
    if(box.read('states-number-done')) countStates++;

    if(box.read('subjects-number')) countSubjects++;
    if(box.read('subjects-number-10')) countSubjects++;

    if(box.read('world-dest')) countWorld++;
    if(box.read('world-dest-done')) countWorld++;
    if(box.read('world-capital-done')) countWorld++;

    if(box.read('table-number')) countTable++;
    if(box.read('table-number-done')) countTable++;
    if(box.read('table-mass-done')) countTable++;

    if(box.read('dates-inv-done')) countDates++;
    if(box.read('dates-world-done')) countDates++;

    final isPr = box.read('isPr');

    if(GetStorage().read('states')) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: kblueBG,
            appBar: AppBar(
              backgroundColor: kblue,
              title: Text('practical_tasks'.tr, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
              centerTitle: true,
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                unselectedLabelColor: kgreyLinearPB,
                indicatorWeight: 4,
                tabs: [
                  Tab(text: 'accurate'.tr,),
                  Tab(text: 'approximate'.tr, ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    CustomTile(
                        title: titles['data'.tr]![0],
                        iconPath: 'assets/practic-icons/usa.svg',
                        handler: () => Get.to(ExercisesListStates(title: titles['data'.tr]![0]), transition: Transition.rightToLeft),
                        isTrailing: true,
                        maxCount: 3,
                        doneCount: countStates.value
                    ),
                    'data'.tr == 'ru' ? sizedBoxLow() : Container(),
                    'data'.tr == 'ru' ? isPr ? CustomTile(
                        title: titles['data'.tr]![1],
                        iconPath: 'assets/practic-icons/russia.svg',
                        handler: () => Get.to(ExerciseListSubjects(title: titles['data'.tr]![1]), transition: Transition.rightToLeft),
                        isTrailing: true,
                        maxCount: 2,
                        doneCount: countSubjects.value
                    ) : CustomTileDisabled(
                      title: titles['data'.tr]![1],
                      isShowPremDialog: true,
                    )
                    : Container(),
                    sizedBoxLow(),
                    isPr ? CustomTile(
                        title: titles['data'.tr]![2],
                        iconPath: 'assets/practic-icons/planet.svg',
                        handler: () => Get.to(ExerciseListCountries(title: titles['data'.tr]![2]), transition: Transition.rightToLeft),
                        isTrailing: true,
                        maxCount: 3,
                        doneCount: countWorld.value
                    ) : CustomTileDisabled(
                      title: titles['data'.tr]![2],
                      isShowPremDialog: true,
                    ),
                    sizedBoxLow(),
                    box.read('table')
                      ? CustomTile(
                        title: titles['data'.tr]![3],
                        iconPath: 'assets/practic-icons/periodic_table_red_blue.svg',
                        handler: () => Get.to(ExerciseListTable(title: titles['data'.tr]![3]), transition: Transition.rightToLeft),
                        isTrailing: true,
                        maxCount: 3,
                        doneCount: countTable.value
                      )
                    : CustomTileDisabled(
                      title: titles['data'.tr]![3],
                      dialogWidgetText: [
                        TextSpan(text: 'to_open_exercise'.tr),
                        TextSpan(text: 'module_n'.trParams({'m': '4'}), style: const TextStyle(color: kblue)),
                      ],
                    ),
                    sizedBoxLow(),
                    !isPr ? CustomTileDisabled(
                      title: titles['data'.tr]![4],
                      isShowPremDialog: true,
                    ) : box.read('dates') ? CustomTile(
                        title: titles['data'.tr]![4],
                        iconPath: 'assets/practic-icons/date.svg',
                        handler: () => Get.to(ExerciseListDates(title: titles['data'.tr]![4]), transition: Transition.rightToLeft),
                        isTrailing: true,
                        maxCount: 2,
                        doneCount: countDates.value
                      ) : CustomTileDisabled(
                      title: titles['data'.tr]![4],
                      dialogWidgetText: [
                        TextSpan(text: 'to_open_exercise'.tr),
                        TextSpan(text: 'module_n'.trParams({'m': '5'}), style: const TextStyle(color: kblue)),
                      ],
                    ),
                    sizedBoxLow(),
                    !isPr ? CustomTileDisabled(
                      title: titles['data'.tr]![5],
                      isShowPremDialog: true,
                    ) : box.read('dates') ? CustomTile(
                      title: titles['data'.tr]![5],
                      iconPath: 'assets/practic-icons/pi.svg',
                      handler: () => Get.to(ExercisePiList(title: titles['data'.tr]![5]),transition: Transition.rightToLeft),
                      isTrailing: false,
                    ) : CustomTileDisabled(
                      title: titles['data'.tr]![5],
                      dialogWidgetText: [
                        TextSpan(text: 'to_open_exercise'.tr),
                        TextSpan(text: 'module_n'.trParams({'m': '5'}), style: const TextStyle(color: kblue)),
                      ],
                    ),
                  ],
                ),
                ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    !isPr ? CustomTileDisabled(
                      title: titles['data'.tr]![6],
                      isShowPremDialog: true,
                    ) : box.read('flags') ? CustomTile(
                      title: titles['data'.tr]![6],
                      iconPath: 'assets/flags/europe/flag3_13.svg',
                      handler: () => Get.to(ExerciseCountriesChainList(title: titles['data'.tr]![6], isFlagExercise: true,), transition: Transition.rightToLeft),
                      isTrailing: false,
                    ) : CustomTileDisabled(
                      title: titles['data'.tr]![6],
                      dialogWidgetText: [
                        TextSpan(text: 'to_open_exercise'.tr),
                        TextSpan(text: 'module_n'.trParams({'m': '7'}), style: const TextStyle(color: kblue)),
                      ],
                    ),
                    sizedBoxLow(),
                    !isPr ? CustomTileDisabled(
                      title: titles['data'.tr]![7],
                      isShowPremDialog: true,
                    ) : box.read('faces') ? CustomTile(
                      title: titles['data'.tr]![7],
                      iconPath: 'assets/face_icon.svg',
                      handler: () => Get.to(ExerciseFaceList(title: titles['data'.tr]![7]), transition: Transition.rightToLeft),
                      isTrailing: false,
                    ) : CustomTileDisabled(
                      title: titles['data'.tr]![7],
                      dialogWidgetText:  [
                        TextSpan(text: 'to_open_exercise'.tr),
                        TextSpan(text: 'module_n'.trParams({'m': '7'}), style: const TextStyle(color: kblue)),
                      ],
                    ),
                  ],
                )
              ],
            )
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: kblueBG,
        appBar: AppBar(
          backgroundColor: kblue,
          title: Text('practical_tasks'.tr, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
          centerTitle: true,
        ),
        body: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: const TextStyle(fontSize: 24, color: Colors.black),
                  children: [
                    TextSpan(text: 'exercises_not_access_text'.tr),
                    TextSpan(text: 'module_n'.trParams({'m': '3'}), style: const TextStyle(color: kblue)),
                  ]
              ),
            )
        ),
      );
    }
  }
}


