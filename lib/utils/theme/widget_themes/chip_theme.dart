import 'package:flutter/material.dart';
import 'package:tatka_app/utils/constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: themeColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: themeColors.black),
    selectedColor: themeColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: themeColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: themeColors.darkerGrey,
    labelStyle: TextStyle(color: themeColors.white),
    selectedColor: themeColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: themeColors.white,
  );
}
