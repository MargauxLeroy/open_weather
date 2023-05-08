import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/sizes.dart';

class AppError extends StatelessWidget {
  final String message;
  final VoidCallback onTap;

  const AppError({super.key, required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const SizedBox(height: AppPadding.gap16),
          IconButton(
            onPressed: onTap,
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
