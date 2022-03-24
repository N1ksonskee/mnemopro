import 'dart:math';

makeChain({required int chainCount,required List<String> words}) {
  List<String> chain = List.generate(chainCount, (i) => '');
  Random random = Random();
  for(int i = 0; i < chainCount;) {
    String randomValue = words[random.nextInt(words.length)];
    if(chain.contains(randomValue)) continue;
    chain[i] = randomValue;
    i++;
  }

  return chain;
}