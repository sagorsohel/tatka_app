import 'package:flutter/material.dart';
import 'package:tatka_app/utils/theme/custom_theme/TextTheme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.blue,
    textTheme: CustomTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Colors.black,
    textTheme: CustomTextTheme.darkTextTheme,
  );
}
