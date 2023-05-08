import 'package:flutter/material.dart';
import 'package:open_weather/clients/get_weather.dart';
import 'package:open_weather/configuration/locations.dart';
import 'package:open_weather/design_system/constants/colors.dart';
import 'package:open_weather/design_system/constants/radius.dart';
import 'package:open_weather/design_system/constants/sizes.dart';
import 'package:open_weather/design_system/widgets/app_error.dart';
import 'package:open_weather/models/hourly_forecast.dart';
import 'package:open_weather/design_system/widgets/app_dropdown.dart';
import 'package:open_weather/models/timestamp.dart';
import 'package:open_weather/presentation/home/widgets/weather_day_pageview.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:open_weather/presentation/home/widgets/weather_secondary_information.dart';
import 'package:open_weather/utils/utils.dart';

class HomeViewParams {
  final String userName;

  const HomeViewParams({required this.userName});
}

class HomeView extends StatefulWidget {
  final String userName;

  const HomeView({super.key, required this.userName});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final Future<HourlyForecast> _futureHourlyForecast;

  final PageController _controller = PageController();

  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _futureHourlyForecast = fetchWeather(
      Locations.PARIS_LAT,
      Locations.PARIS_LON,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onPreviousPageView() {
    _controller.previousPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  void _onNextPageView() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  /// TODO: À optimiser
  List<List<TimeStamp>> _filterByDay(List<TimeStamp> timestamps) {
    Map<String, List<TimeStamp>> days = {};

    for (var timestamp in timestamps) {
      String day = timestamp.dtTxt.substring(0, 10).toString();

      if (!days.containsKey(day)) {
        days[day] = [timestamp];
      } else {
        days[day]?.add(timestamp);
      }
    }

    return days.values.toList();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final textTheme = Theme.of(context).textTheme;

    final appError = AppError(
      message: l10n!.anErrorHaveOccured,
      onTap: () => fetchWeather(
        Locations.PARIS_LAT,
        Locations.PARIS_LON,
      ),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.dark800,
        appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.pushNamed(context, '/'),
            borderRadius: AppBorderRadius.br999,
            child: const Icon(
              Icons.logout,
              color: AppColors.light,
              size: AppIconsSizes.is24,
            ),
          ),
          titleSpacing: AppPadding.gap4,
          title: Text(l10n.welcome(widget.userName.capitalize())),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: AppPadding.gap24),
              padding:
                  const EdgeInsets.symmetric(vertical: AppPadding.padding16),
              child: AppDropdown(value: Locations.locations.first),
            )
          ],
        ),
        body: FutureBuilder<HourlyForecast>(
          future: _futureHourlyForecast,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(color: AppColors.primary),
                    const SizedBox(height: AppPadding.gap8),
                    Text(l10n.waitingForData)
                  ],
                ),
              );
            }

            if (snapshot.hasData) {
              final hourlyForecast = snapshot.data;

              if (hourlyForecast != null && hourlyForecast.list.isNotEmpty) {
                final filteredList = _filterByDay(hourlyForecast.list);

                final humidity = filteredList[_pageIndex].first.main.humidity;
                final cloudiness = filteredList[_pageIndex].first.clouds.all;
                final windSpeed = filteredList[_pageIndex].first.wind.speed;

                final DateTime datetime =
                    DateTime.parse(filteredList[_pageIndex].first.dtTxt);

                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.padding12,
                        vertical: AppPadding.padding16,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed:
                                _pageIndex == 0 ? null : _onPreviousPageView,
                            icon: const Icon(Icons.chevron_left),
                          ),
                          Expanded(
                            child: Text(
                              l10n.humanizedDate(datetime),
                              style: textTheme.headlineMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          IconButton(
                            onPressed: _pageIndex == (filteredList.length - 1)
                                ? null
                                : _onNextPageView,
                            icon: const Icon(Icons.chevron_right),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: PageView(
                        controller: _controller,
                        onPageChanged: (index) {
                          setState(() => _pageIndex = index);
                        },
                        children: [
                          ...filteredList.map(
                            (day) => WeatherDayPageview(
                              timestampMain: day.first,
                              timestamps: day,
                            ),
                          )
                        ],
                      ),
                    ),
                    WeatherSecondaryInformation(
                      humidity: humidity.toString(),
                      cloudiness: cloudiness.toString(),
                      windSpeed: windSpeed.toString(),
                    ),
                  ],
                );
              }
            }

            if (snapshot.hasError) {
              return appError;
            }

            return appError;
          },
        ),
      ),
    );
  }
}
