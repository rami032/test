import 'package:flutter/material.dart';

class Themes{
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    primaryColor: const Color.fromRGBO(188, 144, 106, 1.0),
    appBarTheme: const AppBarTheme(color: Color.fromRGBO(36, 15, 4, 1.0),),
    accentColor: const Color.fromRGBO(188, 144, 106, 1.0),
    backgroundColor:  Color.fromRGBO(92, 48, 21, 1.0),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          const Color.fromRGBO(36, 15, 4, 1.0),),
      ),),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color.fromRGBO(188, 144, 106, 1.0),),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromRGBO(188, 144, 106, 1.0),),
      ),
    ),
  );
}