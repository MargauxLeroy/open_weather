import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/radius.dart';
import 'package:open_weather/design_system/constants/sizes.dart';

class AppDropdown extends StatelessWidget {
  final String value;

  const AppDropdown({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.padding16,
        vertical: AppPadding.gap12,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.light.withOpacity(0.12)),
        borderRadius: AppBorderRadius.br4,
      ),
      child: Center(child: Text(value)),
    );
  }
}
