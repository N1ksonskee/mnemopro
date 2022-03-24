import 'dart:math';

List<String> generateTelNumbers(int count) {
  List<String> numbers = List.generate(count, (_) => '');

  // xxx xxx-xx-xx

  var random = Random();

  for(int i = 0; i < count; i++) {
    int firstRandomNumber = random.nextInt(900) + 100;
    int secondRandomNumber = random.nextInt(1000);
    int thirdRandomNumber = random.nextInt(100);
    int fourthRandomNumber = random.nextInt(100);

    String strFirstRandomNumber = firstRandomNumber.toString();
    String strSecondRandomNumber = '';
    String strThirdRandomNumber = '';
    String strFourthRandomNumber = '';

    if(secondRandomNumber > 9 && secondRandomNumber < 100) {
      strSecondRandomNumber = '0$secondRandomNumber';
    } else if(secondRandomNumber < 10) {
      strSecondRandomNumber = '00$secondRandomNumber';
    } else {
      strSecondRandomNumber = secondRandomNumber.toString();
    }

    if(thirdRandomNumber < 10) {
      strThirdRandomNumber = '0$thirdRandomNumber';
    } else {
      strThirdRandomNumber = thirdRandomNumber.toString();
    }

    if(fourthRandomNumber < 10) {
      strFourthRandomNumber = '0$fourthRandomNumber';
    } else {
      strFourthRandomNumber = fourthRandomNumber.toString();
    }

    numbers[i] = '$strFirstRandomNumber $strSecondRandomNumber-$strThirdRandomNumber-$strFourthRandomNumber';
  }

  return numbers;
}