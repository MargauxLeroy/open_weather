import 'package:flutter/material.dart';
import 'package:open_weather/clients/get_weather.dart';
import 'package:open_weather/configuration/configuration.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/fonts.dart';
import 'package:open_weather/design_system/constants/radius.dart';
import 'package:open_weather/design_system/constants/sizes.dart';
import 'package:open_weather/models/hourly_forecast.dart';
import 'package:open_weather/design_system/widgets/app_dropdown.dart';
import 'package:open_weather/design_system/widgets/app_tag.dart';
import 'package:open_weather/presentation/home/widgets/weather_information.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final Future<HourlyForecast> futureHourlyForecast;

  @override
  void initState() {
    super.initState();
    futureHourlyForecast = fetchWeather(
      AppConfiguration.PARIS_LAT,
      AppConfiguration.PARIS_LON,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.dark800,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {},
            borderRadius: AppBorderRadius.br999,
            child: const Icon(
              Icons.more_vert,
              color: AppColors.light,
              size: AppIconsSizes.is24,
            ),
          ),
          titleSpacing: AppPadding.gap4,
          title: Text('${l10n!.welcome} Margaux'),
          actions: [const AppDropdown(value: 'toto')],
        ),
        body: FutureBuilder<HourlyForecast>(
          future: futureHourlyForecast,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text('waiting'),
              );
            }

            if (snapshot.hasData) {
              print('future ${snapshot.data}');

              final hourlyForecast = snapshot.data;

              if (hourlyForecast != null && hourlyForecast.list.isNotEmpty) {
                final timeStampMain = hourlyForecast.list.first;
                final weather = timeStampMain.weather.first;
                final datetime = timeStampMain.dtTxt.split(' ');

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      datetime[0],
                      style: textTheme.headlineMedium?.copyWith(
                        color: AppColors.light,
                        fontSize: AppFontSizes.fs24,
                      ),
                    ),
                    Text(
                      datetime[1],
                      style: textTheme.headlineMedium?.copyWith(
                        color: AppColors.light,
                        fontSize: AppFontSizes.fs16,
                      ),
                    ),
                    const SizedBox(height: AppPadding.gap24),
                    AppTag(
                      label: weather.description,
                      icon: Image.network(
                        AppConfiguration.iconUrl(weather.icon),
                        height: AppIconsSizes.is48,
                        width: AppIconsSizes.is48,
                      ),
                    ),
                    const SizedBox(height: AppPadding.gap12),
                    Center(
                      child: Text(
                        '${timeStampMain.main.temp.round()}°',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 100,
                        ),
                      ),
                    ),
                    WeatherInformation(
                      humidity:
                          hourlyForecast.list.first.main.humidity.toString(),
                      cloudiness:
                          hourlyForecast.list.first.clouds.all.toString(),
                      windSpeed:
                          hourlyForecast.list.first.wind.speed.toString(),
                    )
                  ],
                );
              }
            }

            if (snapshot.hasError) {
              return const Center(
                child: Text('error'),
              );
            }

            /// todo
            throw 'toto';
          },
        ),
      ),
    );
  }
}
