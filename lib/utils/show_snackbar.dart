import 'package:get/get.dart';
import 'package:flutter/material.dart';

showSnackBar(String res, Color color, {int duration = 2}) => Get..closeAllSnackbars()..showSnackbar(GetSnackBar(
  messageText: Text(res, style: const TextStyle(fontSize: 18, color: Colors.white),),
  duration: Duration(seconds: duration),
  snackPosition: SnackPosition.TOP,
  backgroundColor: color,
));