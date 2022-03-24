import 'dart:math';

List<String> createLieNumbers(int secondValue) {
  List<String> lieValues = List.generate(4, (index) => '', growable: false);
  Random random = Random();

  for(int i = 0; i < 4; ) {
    int randomNumber = random.nextInt(100);

    if (lieValues.contains(randomNumber.toString())) continue;
    if (randomNumber == secondValue) continue;

    lieValues[i] = randomNumber.toString();
    i++;
  }

  return lieValues;
}