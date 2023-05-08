import 'package:flutter/material.dart';

class AppRadius {
  static const r4 = Radius.circular(4.0);
  static const r8 = Radius.circular(8.0);
  static const r999 = Radius.circular(999.0);
}

class AppBorderRadius {
  static const br4 = BorderRadius.all(AppRadius.r4);
  static const br8 = BorderRadius.all(AppRadius.r8);
  static const br999 = BorderRadius.all(AppRadius.r999);
}
