class AppConfiguration {
  /// API
  static const OPEN_WEATHER_ENDPOINT = 'api.openweathermap.org';
  static const OPEN_WEATHER_VERSION = '/data/2.5';

  /// Get icon
  static String iconUrl(String iconId) =>
      'https://openweathermap.org/img/wn/$iconId@2x.png';

  static const apiKey = 'f7825aacf903a8368424231d221216c1';

  /// Location : Paris
  static const PARIS_LAT = '48.866667';
  static const PARIS_LON = '2.333333';

  final Map<String, String> location = {
    'name': 'Paris',
    'lattitude': '48.866667',
    'longitude': '2.333333'
  };
}
