import 'dart:math';

List<String> makeRandomNumber({required int currentNumber, bool isThreeNumber = false}) {
  final Random _random = Random();
  List<String> lieWords = List.generate(4, (index) => '');

  if(isThreeNumber) {
    for(int i = 0; i < 4;) {
      int randomNumber = _random.nextInt(1000);
      if(randomNumber == currentNumber) continue;

      String stringRandomNumber = randomNumber.toString();

      if(randomNumber < 100 && randomNumber > 9) {
        stringRandomNumber = '0$stringRandomNumber';
      } else if(randomNumber < 10) {
        stringRandomNumber = '00$stringRandomNumber';
      }

      if(lieWords[i].contains(stringRandomNumber)) continue;

      lieWords[i] = stringRandomNumber;
      i++;
    }
  } else {
    for(int i = 0; i < 4;) {
      int randomNumber = _random.nextInt(100);
      if(randomNumber == currentNumber) continue;

      String stringRandomNumber = randomNumber.toString();

      if(randomNumber < 10) {
        stringRandomNumber = '0$stringRandomNumber';
      }

      if(lieWords[i].contains(stringRandomNumber)) continue;

      lieWords[i] = stringRandomNumber;
      i++;
    }
  }


  return lieWords;
}