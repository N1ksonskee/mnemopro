import 'dart:math';

List<String> createLieValues({required String secondValue,required int index,required List<dynamic> pairs, bool isRepeatPairValue = false, int secondValueIndex = 0, String firstValue = ''}) {
  List<String> lieValues = List.generate(4, (index) => '', growable: false);
  Random random = Random();



  for(int i = 0; i < 4; ) {
    int randomNumber = random.nextInt(pairs.length);
    var lieValue = pairs[randomNumber][index];


    if(isRepeatPairValue) {
      bool isRepeat = false;
      for(int z = 0; z < pairs.length; z++) {
        if(z != secondValueIndex && pairs[z][1] == pairs[randomNumber][1] && pairs[z][1] == firstValue) {
          print(pairs[z][1]);
          print(pairs[randomNumber][1]);
          isRepeat = true;
        }
      }
      if(isRepeat) continue;
    }



    if (lieValues.contains(lieValue)) continue;


    if (lieValue == secondValue) continue;

    lieValues[i] = lieValue;
    i++;
  }

  return lieValues;
}