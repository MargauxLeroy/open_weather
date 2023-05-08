import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color(0xffEC6E4C);

  static const dark800 = Color(0xff201E1E);
  static const dark500 = Color(0xff393131);
  static const dark300 = Color(0xff867B7B);

  static const light = Color(0xffE3E3E3);

  static const error = Color(0xffEC4C4C);
}

const colorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: AppColors.primary,
  onPrimary: AppColors.dark800,
  secondary: AppColors.dark500,
  onSecondary: AppColors.dark300,
  error: AppColors.error,
  onError: AppColors.light,
  background: AppColors.dark800,
  onBackground: AppColors.light,
  surface: AppColors.dark500,
  onSurface: AppColors.light,
);
