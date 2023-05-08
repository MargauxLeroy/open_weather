import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/sizes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeatherTemperature extends StatelessWidget {
  final double temperature;
  final DateTime datetime;

  const WeatherTemperature({
    super.key,
    required this.temperature,
    required this.datetime,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.padding12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.light.withOpacity(0.12)),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              DateFormat.jm().format(datetime),
              style: textTheme.labelSmall,
            ),
          ),
          Text(
            '${temperature.round().toString()}°',
            style: textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
