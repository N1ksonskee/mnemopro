import 'dart:math';

List shuffleWordsChain(List items, List chain) {
  Random random = Random();

  int rows = chain.length;
  int columns = 4;

  List<List<String>> lieWordsMatrix = List.generate(rows, (j) => List.generate(columns, (i) => ''), growable: false);

  for(int i = 0; i < rows; i++) {
    for(int j = 0; j < columns; j++) {
      int randomNumber = random.nextInt(items.length);
      // если у списке ложных слов уже содержится это слово, тогда ищем другое
      if (lieWordsMatrix[i].contains(items[randomNumber])) {
        j--;
        continue;
      }

      if (items[randomNumber] == chain[i]) {
        j--;
        continue;
      }
      lieWordsMatrix[i][j] = items[randomNumber];

    }
  }
  return lieWordsMatrix;
}