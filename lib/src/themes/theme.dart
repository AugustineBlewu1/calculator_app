import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: Colors.white,
    primaryColor: Colors.red,
    scaffoldBackgroundColor: Colors.white,
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.black
        )
      ),
  );
}

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      cardColor: Colors.white,
      backgroundColor: Colors.grey[200],
      textTheme: const TextTheme(
          button: TextStyle(color: Colors.white),
          caption: TextStyle(color: Colors.white)),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          primary: Colors.white
        )
      ),
      scaffoldBackgroundColor: Colors.black);
}
