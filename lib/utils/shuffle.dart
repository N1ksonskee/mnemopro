import 'dart:math';

shuffle(var items) {
  var random = Random();
  for (var i = items.length - 1; i > 0; i--) {
    int n = random.nextInt(i + 1);
    var temp = items[i];
    items[i] = items[n];
    items[n] = temp;
  }
  return items;
}