import 'package:flutter/material.dart';
import 'package:open_weather/clients/get_weather.dart';
import 'package:open_weather/configuration/configuration.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: fetchWeather(
            AppConfiguration.PARIS_LAT,
            AppConfiguration.PARIS_LONG,
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text('waiting'),
              );
            }

            print('future ${snapshot.data}');

            final hourlyForecast = snapshot.data;

            if (hourlyForecast != null && hourlyForecast.list.isNotEmpty) {
              return Center(
                child: Text('Temp : ${hourlyForecast.list.first.main.temp}'),
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
