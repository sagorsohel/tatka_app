import 'package:flutter/material.dart';
import 'package:tatka_app/utils/constants/colors.dart';
import 'package:tatka_app/utils/constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: themeColors.dark,
      side: const BorderSide(color: themeColors.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: themeColors.black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: themeSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(themeSizes.buttonRadius),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: themeColors.light,
      side: const BorderSide(color: themeColors.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: themeColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: themeSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(themeSizes.buttonRadius),
      ),
    ),
  );
}
