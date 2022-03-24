import 'dart:math';
import 'package:get/get.dart';
import 'package:practical_mnemonic/constants/codes.dart';

List<String> generateCarNumbers(int count) {
  List<String> numbers = List.generate(count, (_) => '');

  // AB555C rus

  var random = Random();

  if('data'.tr == 'ru') {
    for(int i = 0; i < count; i++) {
      String firstRandomLetter = Codes.rusAlphabet[random.nextInt(Codes.rusAlphabet.length)];
      String secondRandomLetter = Codes.rusAlphabet[random.nextInt(Codes.rusAlphabet.length)];
      String thirdRandomLetter = Codes.rusAlphabet[random.nextInt(Codes.rusAlphabet.length)];

      int randomNumber = random.nextInt(1000);

      String stringRandomNumber = '';


      if(randomNumber > 9 && randomNumber < 100) {
        stringRandomNumber = '0$randomNumber';
      } else if(randomNumber < 10) {
        stringRandomNumber = '00$randomNumber';
      } else {
        stringRandomNumber = randomNumber.toString();
      }


      numbers[i] = '$firstRandomLetter$secondRandomLetter$stringRandomNumber$thirdRandomLetter';
    }
  } else {
    for(int i = 0; i < count; i++) {
      String firstRandomLetter = Codes.enAlphabet[random.nextInt(Codes.enAlphabet.length)];
      String secondRandomLetter = Codes.enAlphabet[random.nextInt(Codes.enAlphabet.length)];
      String thirdRandomLetter = Codes.enAlphabet[random.nextInt(Codes.enAlphabet.length)];
      String fourthRandomLetter = Codes.enAlphabet[random.nextInt(Codes.enAlphabet.length)];

      int randomNumber = random.nextInt(1000);

      String stringRandomNumber = '';


      if(randomNumber > 9 && randomNumber < 100) {
        stringRandomNumber = '0$randomNumber';
      } else if(randomNumber < 10) {
        stringRandomNumber = '00$randomNumber';
      } else {
        stringRandomNumber = randomNumber.toString();
      }


      numbers[i] = '$firstRandomLetter$secondRandomLetter$stringRandomNumber$thirdRandomLetter$fourthRandomLetter';
    }
  }


  return numbers;
}