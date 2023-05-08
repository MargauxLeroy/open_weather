import 'dart:convert';
import 'package:open_weather/configuration/configuration.dart';
import 'package:http/http.dart' as http;
import 'package:open_weather/models/hourly_forecast.dart';

Future<HourlyForecast> fetchWeather(String lattitude, String longitude) async {
  final Map<String, String> queryParameters = {
    'lat': lattitude,
    'lon': longitude,
    'appid': AppConfiguration.apiKey,
    'units': 'metric' // Get result in Celcius instead of Kelvin
  };

  const host = AppConfiguration.OPEN_WEATHER_ENDPOINT;
  const path = '${AppConfiguration.OPEN_WEATHER_VERSION}/forecast';

  final uri = Uri.https(host, path, queryParameters);

  final response = await http.get(uri);

  print(' response $response');

  if (response.statusCode == 200) {
    return HourlyForecast.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load weather');
  }
}
