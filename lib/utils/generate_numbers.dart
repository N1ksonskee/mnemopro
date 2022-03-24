import 'dart:math';

List<String> generateNumbers({required int chainCount, bool isThreeNumber = false}) {
  final Random _random = Random();
  List<String> chain = List.generate(chainCount, (index) => '');

  if(isThreeNumber) {
    for(int i = 0; i < chainCount;) {
      int randomNumber = _random.nextInt(1000);

      String stringRandomNumber = randomNumber.toString();

      if(randomNumber < 100 && randomNumber > 9) {
        stringRandomNumber = '0$stringRandomNumber';
      } else if(randomNumber < 10) {
        stringRandomNumber = '00$stringRandomNumber';
      }

      if(chain[i].contains(stringRandomNumber)) continue;

      chain[i] = stringRandomNumber;
      i++;
    }
  } else {
    for(int i = 0; i < chainCount;) {
      int randomNumber = _random.nextInt(100);

      String stringRandomNumber = randomNumber.toString();

     if(randomNumber < 10) {
        stringRandomNumber = '0$stringRandomNumber';
      }

      if(chain[i].contains(stringRandomNumber)) continue;

      chain[i] = stringRandomNumber;
      i++;
    }
  }


  return chain;
}