// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_weather/models/weather/clouds.dart';
import 'package:open_weather/models/weather/timestamp_main.dart';
import 'package:open_weather/models/weather/weather.dart';
import 'package:open_weather/models/weather/wind.dart';

part 'timestamp.freezed.dart';
part 'timestamp.g.dart';

@freezed
class Timestamp with _$Timestamp {
  const factory Timestamp({
    required int dt,
    required TimestampMain main,
    required List<Weather> weather,
    required Clouds clouds,
    required Wind wind,
    required int visibility,
    required double pop,
    @JsonKey(name: 'dt_txt') required String dtTxt,
  }) = _Timestamp;

  factory Timestamp.fromJson(Map<String, Object?> json) =>
      _$TimestampFromJson(json);
}
