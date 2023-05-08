// ignore_for_file: constant_identifier_names

class AppConfiguration {
  /// API
  static const OPEN_WEATHER_ENDPOINT = 'api.openweathermap.org';
  static const OPEN_WEATHER_VERSION = '/data/2.5';

  static const API_KEY = 'f7825aacf903a8368424231d221216c1';

  static const ICON_URL = 'https://openweathermap.org/img/wn/';

  static String iconUrl(String iconId) => '$ICON_URL$iconId@2x.png';
}
