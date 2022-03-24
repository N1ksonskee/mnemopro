import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../constants/codes.dart';
import '../constants/urls.dart';


List<List<String>> generateNames({required int total, required BuildContext context})  {
  List<List<String>> pairs = [];

  Random random = Random();

  List<int> maleIndexes = [];
  List<int> femaleIndexes = [];

  for(int i = 0; i < total; ) {
    int randomMaleValue = random.nextInt(816);
    int randomFemaleValue = random.nextInt(920);

    if(maleIndexes.contains(randomMaleValue)) continue;
    if(femaleIndexes.contains(randomFemaleValue)) continue;

    maleIndexes.add(randomMaleValue);
    femaleIndexes.add(randomFemaleValue);

    i++;
  }

  try {
    for(int i = 0; i < total; i++) {
      int sex = random.nextInt(2);
      if(sex == 0) {
        precacheImage(NetworkImage(Urls.maleUrls[maleIndexes[i]]), context, );
        pairs.add([
          Codes.namesMale['data'.tr]![random.nextInt(Codes.namesMale['data'.tr]!.length)],
           Urls.maleUrls[maleIndexes[i]],
          'male'
        ]);
      } else {
        precacheImage(NetworkImage(Urls.femaleUrls[femaleIndexes[i]]), context);
        pairs.add([
          Codes.namesFemale['data'.tr]![random.nextInt(Codes.namesFemale['data'.tr]!.length)],
           Urls.femaleUrls[femaleIndexes[i]],
          'female'
        ]);
      }
    }
  } catch(e) {
    print(e.toString());
  }

  return pairs;

}