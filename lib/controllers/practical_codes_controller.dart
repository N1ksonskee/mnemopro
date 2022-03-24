import 'package:get/get.dart';

class PracticalCodesController extends GetxController {
  List<String> chain = [];
  List<List<String>> codes = [];
  String title = '';
  int maxSecondsStart = 10;
  String practicalKey = '';

  void clear() {
    title = '';
    chain = [];
    codes = [];
    practicalKey = '';
  }
}

