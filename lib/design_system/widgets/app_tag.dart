import 'package:flutter/material.dart';
import 'package:open_weather/configuration/configuration.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/radius.dart';

class AppTag extends StatelessWidget {
  final String label;
  final Widget? icon;

  const AppTag({super.key, required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    final labelText = Text(
      label,
      style: const TextStyle(color: AppColors.primary),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.24),
        borderRadius: AppBorderRadius.br999,
      ),
      child: icon == null ? labelText : Row(children: [icon!, labelText]),
    );
  }
}
