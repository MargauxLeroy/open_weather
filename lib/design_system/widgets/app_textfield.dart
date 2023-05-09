import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;

  final IconData? icon;

  final void Function(String)? onChanged;

  final String? hint;
  final bool obscureText;

  const AppTextField({
    super.key,
    required this.label,
    this.onChanged,
    this.icon,
    this.hint,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final labelStyle = textTheme.labelMedium;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: labelStyle),
        const SizedBox(height: 12),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hint ?? hint,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 24,
            ),
            prefixIcon: icon != null ? Icon(icon) : const SizedBox(),
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
