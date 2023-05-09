// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamp_main.freezed.dart';
part 'timestamp_main.g.dart';

@freezed
class TimestampMain with _$TimestampMain {
  const factory TimestampMain({
    required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
    required int pressure,
    @JsonKey(name: 'sea_level') required int seaLevel,
    @JsonKey(name: 'grnd_level') required int grndLevel,
    required int humidity,
    @JsonKey(name: 'temp_kf') required double tempKf,
  }) = _TimestampMain;

  factory TimestampMain.fromJson(Map<String, Object?> json) =>
      _$TimestampMainFromJson(json);
}
