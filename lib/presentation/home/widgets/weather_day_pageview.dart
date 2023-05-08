import 'package:flutter/material.dart';
import 'package:open_weather/configuration/configuration.dart';
import 'package:open_weather/design_system/constants/sizes.dart';
import 'package:open_weather/design_system/widgets/app_tag.dart';
import 'package:open_weather/models/timestamp.dart';
import 'package:open_weather/presentation/home/widgets/weather_temperature.dart';

class WeatherDayPageview extends StatelessWidget {
  final TimeStamp timestampMain;
  final List<TimeStamp> timestamps;

  const WeatherDayPageview({
    super.key,
    required this.timestampMain,
    required this.timestamps,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final temperature = timestampMain.main.temp;
    final weather = timestampMain.weather.first;

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.contentPadding,
                vertical: AppPadding.padding24,
              ),
              child: Column(
                children: [
                  AppTag(
                    label: weather.description,
                    icon: Image.network(
                      AppConfiguration.iconUrl(weather.icon),
                      height: AppIconsSizes.is48,
                      width: AppIconsSizes.is48,
                    ),
                  ),
                  const SizedBox(height: AppPadding.gap4),
                  Center(
                    child: Text(
                      '${temperature.round()}°',
                      style: textTheme.displayLarge,
                    ),
                  ),
                  Column(
                    children: [
                      ...timestamps.map(
                        (timestamp) {
                          return WeatherTemperature(
                            temperature: timestamp.main.temp,
                            datetime: DateTime.parse(timestamp.dtTxt),
                          );
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
