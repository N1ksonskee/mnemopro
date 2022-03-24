import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/colors.dart';
import 'package:practical_mnemonic/practic_pages/exercise_codes_list.dart';
import '../constants/codes.dart';
import '../utils/show_snackbar.dart';

class CodesPageDetail extends StatelessWidget {
  const CodesPageDetail({
    Key? key,
    required this.title,
    required this.typeOfCodes
  }) : super(key: key);

  final String title;
  final String typeOfCodes;

  @override
  Widget build(BuildContext context) {
    List<dynamic> list = [];
    List<dynamic> listCodes = [];
    List<dynamic> list2 = []; // for names
    List<dynamic> listCodes2 = []; // for names
    double textWidth = 60;
    double textSize = 30;

    if(typeOfCodes == 'numbers') {
      list = Codes.numbers.toList();
      listCodes = GetStorage().read('numbersCodes');
    } else if(typeOfCodes == 'characteristics') {
      list = Codes.characteristics.toList();
      listCodes = GetStorage().read('characteristicsCodes');
    } else if(typeOfCodes == 'rusAlphabet') {
      list = Codes.rusAlphabet.toList();
      listCodes = GetStorage().read('rusAlphabetCodes');
    } else if(typeOfCodes == 'enAlphabet') {
      list = Codes.enAlphabet.toList();
      listCodes = GetStorage().read('enAlphabetCodes');
    } else if(typeOfCodes == 'specialSymbols') {
      list = Codes.specialSymbols.toList();
      listCodes = GetStorage().read('specialSymbolsCodes');
    } else if(typeOfCodes == 'months') {
      list = Codes.months['data'.tr]!.toList();
      listCodes = GetStorage().read('monthsCodes');
    } else if(typeOfCodes == 'names') {
      list = Codes.namesMale['data'.tr]!.toList();
      list2 = Codes.namesFemale['data'.tr]!.toList();
      listCodes = GetStorage().read('namesMaleCodes');
      listCodes2 = GetStorage().read('namesFemaleCodes');
    }

    List<TextEditingController> tecList = List.generate(listCodes.length, (i) => TextEditingController(text: listCodes[i]));
    List<TextEditingController> tecList2 = [];
    if(typeOfCodes == 'names') tecList2 = List.generate(listCodes2.length, (i) => TextEditingController(text: listCodes2[i]));

    if(typeOfCodes == 'names' || typeOfCodes == 'months') {
      textWidth = 100;
      textSize = 18;
    }

    void _saveData() async {
      bool isSave = await _showDialog();
      if(isSave) {
        List<String> onSavedList = List.generate(listCodes.length, (i) => tecList[i].text);
        List<String> onSavedList2 = [];
        final uid = FirebaseAuth.instance.currentUser!.uid;
        final doc = FirebaseFirestore.instance.collection('users').doc(uid);


        if(typeOfCodes == 'names') {
          onSavedList2 = List.generate(listCodes2.length, (i) => tecList2[i].text);
        }

        if(typeOfCodes == 'numbers') {
          GetStorage().write('numbersCodes', onSavedList);
          await doc.update({'numbersCodes': onSavedList});
        } else if(typeOfCodes == 'characteristics') {
          GetStorage().write('characteristicsCodes', onSavedList);
          await doc.update({'characteristicsCodes': onSavedList});
        } else if(typeOfCodes == 'rusAlphabet') {
          GetStorage().write('rusAlphabetCodes', onSavedList);
          await doc.update({'rusAlphabetCodes': onSavedList});
        } else if(typeOfCodes == 'enAlphabet') {
          GetStorage().write('enAlphabetCodes', onSavedList);
          await doc.update({'enAlphabetCodes': onSavedList});
        } else if(typeOfCodes == 'specialSymbols') {
          GetStorage().write('specialSymbolsCodes', onSavedList);
          await doc.update({'specialSymbolsCodes': onSavedList});
        } else if(typeOfCodes == 'months') {
          GetStorage().write('monthsCodes', onSavedList);
          await doc.update({'monthsCodes': onSavedList});
        } else if(typeOfCodes == 'names') {
          GetStorage().write('namesMaleCodes', onSavedList);
          await doc.update({'namesMaleCodes': onSavedList});
          GetStorage().write('namesFemaleCodes', onSavedList2);
          await doc.update({'namesFemaleCodes': onSavedList});
        }

        showSnackBar('saved'.tr, kblue, duration: 1);
      }
    }


    if(typeOfCodes == 'names') {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: kgreyBG,
            appBar: AppBar(
              backgroundColor: kgrey,
              title: Text(title, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),
              actions: [
                IconButton(
                  onPressed: _saveData,
                  icon: const Icon(Icons.save, color: Colors.white, ),
                ),
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                unselectedLabelColor: kgreyLinearPB,
                indicatorWeight: 4,
                tabs: [
                  Tab(text: 'male'.tr,),
                  Tab(text: 'female'.tr, ),
                ],
              ),
            ),
            body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (_, i) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(list[i], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: textSize),),
                        const SizedBox(height: 8,),
                        CustomTextField(textEditingController: tecList[i],),
                      ],
                    ),
                    separatorBuilder: (_, i) => const SizedBox(height: 16,),
                    itemCount: list.length
                ),
                ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (_, i) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(list2[i], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: textSize),),
                        const SizedBox(height: 8,),
                        CustomTextField(textEditingController: tecList2[i],),
                      ],
                    ),
                    separatorBuilder: (_, i) => const SizedBox(height: 16,),
                    itemCount: list2.length
                ),
              ],
            )
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: kgreyBG,
        appBar: AppBar(
          backgroundColor: kgrey,
          title: Text(title, style: Get.textTheme.headline1!.copyWith(fontSize: 25)),

          actions: [
            typeOfCodes == 'numbers' ? TextButton(
              onPressed: () => Get.to(ExerciseCodesList(title: 'learn_nac'.tr), transition: Transition.rightToLeft),
              child: Text('learn'.tr, style: const TextStyle(color: kred, fontSize: 20),)
            ) : Container(),
            const SizedBox(width: 10,),
            IconButton(
              onPressed: _saveData,
              icon: const Icon(Icons.save, color: Colors.white, ),
            ),
          ]
        ),
        body: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemBuilder: (_, i) =>
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: textWidth,
                        child: Text(list[i], style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: textSize),)),
                    Expanded(child: CustomTextField(
                      textEditingController: tecList[i],)),
                  ],
                ),
            separatorBuilder: (_, i) => const SizedBox(height: 16,),
            itemCount: list.length
        ),
      );
    }
  }

  _showDialog() => Get.dialog(AlertDialog(
      title: Text(
        'save_changes'.tr,
        style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22
        ),
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
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textEditingController
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) => TextField(
    controller: textEditingController,
    style: const TextStyle(fontSize: 18),
    cursorColor: kblue,
    enableSuggestions: false,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
      filled: true,
      fillColor: Colors.white,
      border: InputBorder.none,
      hintStyle: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.5)),
      errorStyle: const TextStyle(fontSize: 16, color: kred),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
          borderSide: const BorderSide(style: BorderStyle.none, width: 0)
      ),

      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
          borderSide: const BorderSide(style: BorderStyle.none, width: 0)
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
          borderSide: const BorderSide(style: BorderStyle.none, width: 0)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
          borderSide: const BorderSide(style: BorderStyle.none, width: 0)
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(45),
          borderSide: const BorderSide(style: BorderStyle.none, width: 0)
      ),
    ),
    textInputAction: TextInputAction.done,
  );
}


