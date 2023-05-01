import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/models/timestamp.dart';

part 'hourly_forecast.freezed.dart';
part 'hourly_forecast.g.dart';

@freezed
class HourlyForecast with _$HourlyForecast {
  const factory HourlyForecast({
    required String cod,
    required int message,
    required int cnt, // Number of timestamps
    // @Default([])
    required List<TimeStamp> list,
  }) = _HourlyForecast;

  factory HourlyForecast.fromJson(Map<String, Object?> json) =>
      _$HourlyForecastFromJson(json);
}
