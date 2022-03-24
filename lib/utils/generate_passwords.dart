import 'dart:math';
import 'package:practical_mnemonic/constants/codes.dart';

List<String> generatePasswords(int count) {
  List<String> passwords = List.generate(count, (_) => '');

  var random = Random();

  for(int i = 0; i < count; i++) {
    String password = '';
    for(int j = 0; j < 10; j++) {
      int kindOfLetter = random.nextInt(4);
      String letter = '';
      if(kindOfLetter == 0) {
        letter = Codes.characteristics[random.nextInt(Codes.characteristics.length)];
      } else if(kindOfLetter == 1) {
        letter = Codes.enSmallAlphabet[random.nextInt(Codes.enSmallAlphabet.length)];
      } else if(kindOfLetter == 2) {
        letter = Codes.specialSymbols[random.nextInt(Codes.specialSymbols.length)];
      } else if(kindOfLetter == 3) {
        letter = Codes.enAlphabet[random.nextInt(Codes.enAlphabet.length)];
      }
      password += letter;
    }
    passwords[i] = password;
  }

  return passwords;
}