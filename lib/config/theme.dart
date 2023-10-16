import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
  );
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.black,
    appBarTheme: const AppBarTheme(
      centerTitle: false,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      elevation: 0,
    ),
  );
}
