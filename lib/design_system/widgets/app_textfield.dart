import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';

class AppTextField extends StatelessWidget {
  final String label;

  final IconData? icon;

  final void Function(String)? onChanged;

  const AppTextField({
    super.key,
    required this.label,
    this.onChanged,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final labelStyle = textTheme.labelMedium?.copyWith(
      color: AppColors.light,
    );

    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: labelStyle),
        const SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            // label: const Text('toto'),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 24,
            ),
            prefixIcon: icon != null ? Icon(icon) : const SizedBox(),
          ),
        ),
      ],
    );
  }
}
