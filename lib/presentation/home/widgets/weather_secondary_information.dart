import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/sizes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WeatherSecondaryInformation extends StatelessWidget {
  final String humidity;
  final String cloudiness;
  final String windSpeed;

  const WeatherSecondaryInformation({
    super.key,
    required this.humidity,
    required this.cloudiness,
    required this.windSpeed,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      color: AppColors.dark500,
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.padding12,
        vertical: AppPadding.padding16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WeatherSecondaryInformationItem(
            label: l10n!.humidity,
            icon: Icons.water_drop_outlined,
            metric: '%',
            value: humidity,
          ),
          WeatherSecondaryInformationItem(
            label: l10n.cloudiness,
            icon: Icons.cloud_outlined,
            metric: '%',
            value: cloudiness,
          ),
          WeatherSecondaryInformationItem(
            label: l10n.windSpeed,
            icon: Icons.air,
            metric: 'm/s',
            value: windSpeed,
          ),
        ],
      ),
    );
  }
}

class WeatherSecondaryInformationItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final String metric;

  const WeatherSecondaryInformationItem({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    required this.metric,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(AppPadding.padding16),
      child: Column(
        children: [
          Icon(icon, size: AppIconsSizes.is48, color: AppColors.dark300),
          const SizedBox(height: AppPadding.gap12),
          Text('$value$metric', style: textTheme.displayMedium),
          const SizedBox(height: AppPadding.gap4),
          Text(label.toUpperCase(), style: textTheme.labelSmall),
        ],
      ),
    );
  }
}
