import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:open_weather/design_system/constants/colors.dart';

final serif = GoogleFonts.merriweather().fontFamily;
final sansSerif = GoogleFonts.manrope().fontFamily;

final textTheme = TextTheme(
  /// Ex. Temperature of the day
  displayLarge: TextStyle(
    fontFamily: sansSerif,
    fontSize: AppFontSizes.fs80,
    fontWeight: FontWeight.w800,
    color: AppColors.primary,
  ),

  /// Ex. Secondary weather informations
  displayMedium: TextStyle(
    fontFamily: sansSerif,
    fontSize: AppFontSizes.fs20,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  ),

  /// AppBar, Titles,...
  headlineLarge: TextStyle(
    fontFamily: sansSerif,
    fontSize: AppFontSizes.fs16,
    fontWeight: FontWeight.w500,
  ),

  /// Date of the day
  headlineMedium: TextStyle(
    fontFamily: serif,
    fontSize: AppFontSizes.fs20,
    fontWeight: FontWeight.w600,
    color: AppColors.light,
  ),

  /// Ex. Buttons
  labelLarge: TextStyle(
    fontFamily: sansSerif,
    fontSize: AppFontSizes.fs16,
    fontWeight: FontWeight.w700,
  ),

  /// Ex. Textfields labels
  labelMedium: TextStyle(
    fontFamily: serif,
    fontSize: AppFontSizes.fs14,
    color: AppColors.light,
  ),

  /// Ex. Secondary weather informations labels
  labelSmall: TextStyle(
    fontFamily: serif,
    fontSize: AppFontSizes.fs12,
    fontWeight: FontWeight.w600,
    color: AppColors.light,
  ),

  /// Ex. Tags
  bodyMedium: TextStyle(
    fontFamily: sansSerif,
    fontSize: AppFontSizes.fs14,
    fontWeight: FontWeight.w600,
    color: AppColors.primary,
  ),
);

class AppFontSizes {
  static const fs12 = 12.0;
  static const fs14 = 14.0;
  static const fs16 = 16.0;
  static const fs20 = 20.0;
  static const fs24 = 24.0;
  static const fs80 = 80.0;
}
