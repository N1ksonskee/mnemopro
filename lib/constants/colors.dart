import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const Color kred = Color(0xFFFF2939);
const Color kredDark = Color(0xFFC22335);
final Color kredLight = const Color(0xFFFF2939).withOpacity(0.2);
final Color kredLight38 = Color(0xFFFF2939).withOpacity(0.38);

const Color kblue = Color(0xFF0D6AB7);
const Color kblueDark = Color(0xFF055699);
final Color kblueLight = const Color(0xFF0D6AB7).withOpacity(0.2);
final Color kblueLight38 = Color(0xFF0D6AB7).withOpacity(0.38);

const Color kgrey = Color(0xFF757580);
const Color kgreyDark = Color(0xff3B3B3B);

const Color kredBG = Color(0xFFFFF6F8);
const Color kblueBG = Color(0xFFEEF7FF);
const Color kgreyBG = Color(0xFFF3F3F3);
const Color kgreyLinearPB = Color(0xFFC2C2C2);

const Color kModuleDialogBg = Color(0xffD8D8D8);


class Themes {
  static final light = ThemeData(
    fontFamily: 'Poppins',
    textTheme:  const TextTheme(
      bodyText1: TextStyle(
        fontWeight: FontWeight.normal,
        height: 1.3,
        fontSize: 18,
        color: Colors.black,
        letterSpacing: 0.5
      ),
      bodyText2: TextStyle(
        fontWeight: FontWeight.bold,
        height: 1.3,
        fontSize: 20,
        color: kgrey,
        letterSpacing: 0.5),
      headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.black
      ),
      headline1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
      headline3: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black
      )
    ),

    appBarTheme: AppBarTheme(
      elevation: 0,
      shadowColor: Colors.transparent
    ),

  );

  static final dark = ThemeData(

      textTheme: const TextTheme(
          bodyText1: TextStyle(
              fontFamily: 'Poppins',
              height: 1.3,
              fontSize: 18,
              color: Colors.black,
              letterSpacing: 0.5
          ),
          headline2: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black
          )
      )
  );
}

Widget sizedBoxHigh() => const SizedBox(height: 32);
Widget sizedBoxLow() => const SizedBox(height: 16);

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  /// Get isDarkMode info from local storage and return ThemeMode
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  /// Load isDArkMode from local storage and if it's empty, returns false (that means default theme is light)
  bool _loadThemeFromBox() => _box.read(_key) ?? false;

  /// Save isDarkMode to local storage
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  /// Switch theme and save to local storage
  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
