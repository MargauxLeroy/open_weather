// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamp.freezed.dart';
part 'timestamp.g.dart';

@freezed
class TimeStamp with _$TimeStamp {
  const factory TimeStamp({
    required int dt, // Datetime
    required TimeStampMain main,
    required List<Weather> weather,
    // Clouds
    required Wind wind,
    required int visibility,
    required double pop,
    // Sys
    @JsonKey(name: 'dt_txt') required String dtTxt,
  }) = _TimeStamp;

  factory TimeStamp.fromJson(Map<String, Object?> json) =>
      _$TimeStampFromJson(json);
}

@freezed
class TimeStampMain with _$TimeStampMain {
  const factory TimeStampMain({
    required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
    required int pressure,
    @JsonKey(name: 'sea_level') required int seaLevel,
    @JsonKey(name: 'grnd_level') required int grndLevel,
    required int humidity,
    @JsonKey(name: 'temp_kf') required double tempKf,
  }) = _TimeStampMain;

  factory TimeStampMain.fromJson(Map<String, Object?> json) =>
      _$TimeStampMainFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, Object?> json) =>
      _$WeatherFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    required double speed,
    required int deg,
    required double gust,
  }) = _Wind;

  factory Wind.fromJson(Map<String, Object?> json) => _$WindFromJson(json);
}
