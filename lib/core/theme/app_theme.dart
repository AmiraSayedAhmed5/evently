import 'package:flutter/material.dart';
class AppTheme {
  static const Color primaryLight =Color(0xff0E3A99);
  static const Color primaryDark =Color(0xff457AED);
  static const Color backgroundLight =Color(0xffF4F7FF);
  static const Color backgrounddark =Color(0xff0E3A99);
  static const Color white =Color(0xff0E3A99);
  static const Color grey =Color(0xff0E3A99);
  static const Color darkgray =Color(0xff0E3A99);
  static const Color black =Color(0xff0E3A99);
  static const Color red =Color(0xff0E3A99);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: AppTheme(

    ),
  );
  static ThemeData darkTheme = ThemeData();
}