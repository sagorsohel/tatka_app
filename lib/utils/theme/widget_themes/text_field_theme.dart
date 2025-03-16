import 'package:flutter/material.dart';
import 'package:tatka_app/utils/constants/colors.dart';
import 'package:tatka_app/utils/constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: themeColors.darkGrey,
    suffixIconColor: themeColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: themeSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: themeSizes.fontSizeMd,
      color: themeColors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: themeSizes.fontSizeSm,
      color: themeColors.black,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: themeColors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: themeColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: themeColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: themeColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: themeColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: themeColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: themeColors.darkGrey,
    suffixIconColor: themeColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: themeSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: themeSizes.fontSizeMd,
      color: themeColors.white,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: themeSizes.fontSizeSm,
      color: themeColors.white,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: themeColors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: themeColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: themeColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: themeColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: themeColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(themeSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: themeColors.warning),
    ),
  );
}
