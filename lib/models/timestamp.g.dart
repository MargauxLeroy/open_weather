// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeStamp _$$_TimeStampFromJson(Map<String, dynamic> json) => _$_TimeStamp(
      dt: json['dt'] as int,
      main: TimeStampMain.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: json['visibility'] as int,
      pop: (json['pop'] as num).toDouble(),
      dtTxt: json['dt_txt'] as String,
    );

Map<String, dynamic> _$$_TimeStampToJson(_$_TimeStamp instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'dt_txt': instance.dtTxt,
    };

_$_TimeStampMain _$$_TimeStampMainFromJson(Map<String, dynamic> json) =>
    _$_TimeStampMain(
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
      pressure: json['pressure'] as int,
      seaLevel: json['sea_level'] as int,
      grndLevel: json['grnd_level'] as int,
      humidity: json['humidity'] as int,
      tempKf: (json['temp_kf'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TimeStampMainToJson(_$_TimeStampMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grndLevel,
      'humidity': instance.humidity,
      'temp_kf': instance.tempKf,
    };

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      id: json['id'] as int,
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$_Wind _$$_WindFromJson(Map<String, dynamic> json) => _$_Wind(
      speed: (json['speed'] as num).toDouble(),
      deg: json['deg'] as int,
      gust: (json['gust'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

_$_Clouds _$$_CloudsFromJson(Map<String, dynamic> json) => _$_Clouds(
      all: json['all'] as int,
    );

Map<String, dynamic> _$$_CloudsToJson(_$_Clouds instance) => <String, dynamic>{
      'all': instance.all,
    };
