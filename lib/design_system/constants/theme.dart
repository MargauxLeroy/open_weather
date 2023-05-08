import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/fonts.dart';
import 'package:open_weather/design_system/constants/radius.dart';
import 'package:open_weather/design_system/constants/sizes.dart';

ThemeData themeData = ThemeData(
  textTheme: textTheme,
  colorScheme: colorScheme,

  /// AppBar
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 100,
    shape: Border(
      bottom: BorderSide(color: AppColors.light.withOpacity(0.12), width: 1),
    ),
    // systemOverlayStyle: SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent, // Android Background
    //   statusBarIconBrightness: Brightness.dark, // Android Icons
    //   // statusBarBrightness: Brightness.light,
    //   // systemNavigationBarIconBrightness: Brightness.dark,
    // ),
  ),

  /// Buttons
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.primary),
      foregroundColor: MaterialStateProperty.all(AppColors.dark800),
      padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 24, vertical: 16)),
      textStyle: MaterialStateProperty.all(textTheme.labelLarge),
    ),
  ),

  /// TextFields
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(fontSize: 24),
    hintStyle: TextStyle(color: AppColors.light.withOpacity(0.72)),
    iconColor: AppColors.primary,
    prefixIconColor: AppColors.primary,
    // activeIndicatorBorder: const BorderSide(color: AppColors.primary),
    filled: false,
    outlineBorder: const BorderSide(color: AppColors.light),
    focusedBorder: const OutlineInputBorder(
      borderRadius: AppBorderRadius.br4,
      borderSide: BorderSide(color: AppColors.primary),
    ),
    // disabledBorder:
    // border: const OutlineInputBorder(
    //   borderRadius: AppBorderRadius.br4,
    //   borderSide: BorderSide(color: AppColors.primary),
    // ),
  ),

  /// Dropdown
  dropdownMenuTheme: const DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: AppBorderRadius.br4,
        borderSide: BorderSide(color: AppColors.light),
      ),
      contentPadding: EdgeInsets.only(
        bottom: AppPadding.padding8,
        right: AppPadding.padding8,
        top: AppPadding.padding8,
        left: AppPadding.padding12,
      ),
      outlineBorder: BorderSide(color: AppColors.light),
    ),
  ),
);
