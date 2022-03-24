import 'dart:math';


List<List<String>> makePairs({required int count, required List<String> words, isNumbersEx = false}) {

  var pairs = List.generate(count, (index) => List.generate(2, (index) => ''));

  List<String> values = List.generate(count*2, (index) => '');

  Random random = Random();
  for(int i = 0; i < count*2;) {
    String randomValue = words[random.nextInt(words.length)];
    if(values.contains(randomValue)) {
      continue;
    }
    values[i] = randomValue;
    i++;
  }

  random = Random();
  values.shuffle(random);

  if(isNumbersEx) {
    for(int i = 0, j = 0; i < count; i++, j+=2) {
      pairs[i][0] = i.toString();
      pairs[i][1] = values[j + 1];
    }
  } else {
    for(int i = 0, j = 0; i < count; i++, j+=2) {
      pairs[i][0] = values[j];
      pairs[i][1] = values[j + 1];
    }
  }

  return pairs;
}