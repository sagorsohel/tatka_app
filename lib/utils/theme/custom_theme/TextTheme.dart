import 'package:flutter/material.dart';

class CustomTextTheme {
  CustomTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    ),
    headlineMedium: TextStyle().copyWith(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    ),
    headlineMedium: TextStyle().copyWith(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
  );
}
