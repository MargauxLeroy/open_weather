import 'package:flutter/material.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/sizes.dart';

class WeatherInformation extends StatelessWidget {
  final String humidity;
  final String cloudiness;
  final String windSpeed;

  const WeatherInformation({
    super.key,
    required this.humidity,
    required this.cloudiness,
    required this.windSpeed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.dark500,
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.padding12,
        vertical: AppPadding.padding24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WeatherCaracteristic(
            label: 'Humidity',
            icon: Icons.water,
            metric: '%',
            value: humidity,
          ),
          WeatherCaracteristic(
            label: 'Cloudiness',
            icon: Icons.cloud,
            metric: '%',
            value: cloudiness,
          ),
          WeatherCaracteristic(
            label: 'Wind Speed',
            icon: Icons.wind_power_outlined,
            metric: 'm/s',
            value: windSpeed,
          ),
        ],
      ),
    );
  }
}

class WeatherCaracteristic extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final String metric;

  const WeatherCaracteristic({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    required this.metric,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.padding16),
      child: Column(
        children: [
          Icon(
            icon,
            size: 48,
            color: AppColors.dark300,
          ),
          const SizedBox(height: AppPadding.gap12),
          Text('$value$metric',
              style: const TextStyle(
                fontSize: 24,
                color: AppColors.primary,
              )),
          const SizedBox(height: AppPadding.gap4),
          Text(
            label.toUpperCase(),
            style: const TextStyle(color: AppColors.light),
          ),
        ],
      ),
    );
  }
}
