import 'package:flutter/material.dart';
class AppTheme {
  static const Color primaryLight =Color(0xff0E3A99);
  static const Color primaryDark =Color(0xff457AED);
  static const Color backgroundLight =Color(0xffF4F7FF);
  static const Color backgrounddark =Color(0xff000F30);
  static const Color white =Color(0xffFFFFFF);
  static const Color offwhite =Color(0xffF0F0F0);
  static const Color grey =Color(0xffB9B9B9);
  static const Color lightgrey =Color(0xffE9EAEB);
  static const Color darkgray =Color(0xff7B7B7B);
  static const Color black =Color(0xff1C1C1C);
  static const Color red =Color(0xffFF3232);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: backgroundLight,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: black,
      ),
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: .fixed,
      backgroundColor: white,
      selectedItemColor: primaryLight,
      unselectedItemColor: grey,
    ),
    floatingActionButtonTheme:FloatingActionButtonThemeData(
      backgroundColor: primaryLight,
      foregroundColor: white,
        shape: CircleBorder(),
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color:primaryLight,
      ),
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: black,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: darkgray,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: black,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: white,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: offwhite),
        borderRadius: BorderRadius.circular(16),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: offwhite),
        borderRadius: BorderRadius.circular(16),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: red),
        borderRadius: BorderRadius.circular(16),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: red),
        borderRadius: BorderRadius.circular(16),
      ),
      hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: darkgray),
    ),
    listTileTheme: ListTileThemeData(
      tileColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),side:BorderSide(color: offwhite),),
      titleTextStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: black)
    ),
    textButtonTheme:TextButtonThemeData(style: TextButton.styleFrom(foregroundColor:primaryLight,textStyle:TextStyle(fontSize:14,fontWeight:FontWeight.bold,decoration: .underline))),
    elevatedButtonTheme:ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
      backgroundColor: primaryLight,foregroundColor: white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)
    ))
  );
  static ThemeData darkTheme = ThemeData();
}