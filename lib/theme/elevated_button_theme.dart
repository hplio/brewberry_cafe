import 'package:flutter/material.dart';

class TElevetedButtonTheme {
  TElevetedButtonTheme._();
  static ElevatedButtonThemeData lightElevetedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFFd17842),
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
        side: const BorderSide(color: Color(0XFFd17842)),
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        textStyle: const TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        )),
  );

  
  static ElevatedButtonThemeData darkElevetedButtonTheme =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0XFFd17842),
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
        side: const BorderSide(color: Color(0XFFd17842)),
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        textStyle: const TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        )),
  );
}
