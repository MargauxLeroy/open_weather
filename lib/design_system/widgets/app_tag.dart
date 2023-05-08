import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/radius.dart';
import 'package:open_weather/design_system/constants/sizes.dart';

class AppTag extends StatelessWidget {
  final String label;
  final Widget? icon;

  const AppTag({super.key, required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final labelText = Text(label, style: textTheme.bodyMedium);

    return Container(
      padding: const EdgeInsets.only(
        left: AppPadding.padding16,
        right: AppPadding.padding24,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.12),
        borderRadius: AppBorderRadius.br999,
      ),
      child: icon == null
          ? labelText
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [icon!, labelText],
            ),
    );
  }
}
