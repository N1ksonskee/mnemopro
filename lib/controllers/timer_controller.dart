import 'dart:async';
import 'package:get/get.dart';

class TimerController extends GetxController {
  late RxInt seconds;

  TimerController(int n) {
    seconds = n.obs;
  }

  decrement() => seconds--;

  RxBool isTapped = false.obs;

  Timer? timer;
}