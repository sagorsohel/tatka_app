import 'package:flutter/material.dart';
import 'package:tatka_app/utils/constants/colors.dart';
import 'package:tatka_app/utils/constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: themeColors.light,
      backgroundColor: themeColors.primary,
      disabledForegroundColor: themeColors.darkGrey,
      disabledBackgroundColor: themeColors.buttonDisabled,
      side: const BorderSide(color: themeColors.primary),
      padding: const EdgeInsets.symmetric(vertical: themeSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: themeColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(themeSizes.buttonRadius),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: themeColors.light,
      backgroundColor: themeColors.primary,
      disabledForegroundColor: themeColors.darkGrey,
      disabledBackgroundColor: themeColors.darkerGrey,
      side: const BorderSide(color: themeColors.primary),
      padding: const EdgeInsets.symmetric(vertical: themeSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: themeColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(themeSizes.buttonRadius),
      ),
    ),
  );
}
