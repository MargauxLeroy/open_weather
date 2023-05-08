import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';

// const serif = GoogleFonts.merriweather;
// const sansSerif = GoogleFonts.manrope;
const serif = 'Merriweather';
const sansSerif = 'Manrope';

const textTheme = TextTheme(
  // Temp
  displayLarge: TextStyle(
      fontFamily: sansSerif,
      fontSize: 100.0,
      fontWeight: FontWeight.w800,
      color: AppColors.primary),
  displayMedium: TextStyle(
    fontFamily: sansSerif,
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  ),

  // AppBar, Titles,...
  headlineLarge: TextStyle(
    fontFamily: sansSerif,
    fontSize: 16.0,
  ),

  // Buttons,...
  labelLarge: TextStyle(
    fontFamily: sansSerif,
    fontSize: AppFontSizes.fs16,
    // fontWeight:
  ),

  // Textfields,...
  labelMedium: TextStyle(
    fontFamily: serif,
    fontSize: 14.0,
  ),

  // Tags...
  bodyMedium: TextStyle(
    fontFamily: sansSerif,
    fontSize: 14.0,
  ),

  // Tags...
  bodySmall: TextStyle(
    fontFamily: sansSerif,
    fontSize: 12.0,
  ),
);

class AppFontSizes {
  static const fs12 = 12.0;
  static const fs14 = 14.0;
  static const fs16 = 16.0;
  static const fs24 = 24.0;
  static const fs100 = 100.0;
}
