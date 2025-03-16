import 'package:flutter/material.dart';
import 'package:tatka_app/utils/constants/colors.dart';
import 'package:tatka_app/utils/constants/sizes.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: themeColors.black, size: themeSizes.iconMd),
    actionsIconTheme: IconThemeData(
      color: themeColors.black,
      size: themeSizes.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: themeColors.black,
    ),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: themeColors.black, size: themeSizes.iconMd),
    actionsIconTheme: IconThemeData(
      color: themeColors.white,
      size: themeSizes.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: themeColors.white,
    ),
  );
}
