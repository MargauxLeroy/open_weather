// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HourlyForecast _$HourlyForecastFromJson(Map<String, dynamic> json) {
  return _HourlyForecast.fromJson(json);
}

/// @nodoc
mixin _$HourlyForecast {
  String get cod => throw _privateConstructorUsedError;
  int get message => throw _privateConstructorUsedError;
  int get cnt => throw _privateConstructorUsedError; // Number of timestamps
  List<Timestamp> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyForecastCopyWith<HourlyForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyForecastCopyWith<$Res> {
  factory $HourlyForecastCopyWith(
          HourlyForecast value, $Res Function(HourlyForecast) then) =
      _$HourlyForecastCopyWithImpl<$Res, HourlyForecast>;
  @useResult
  $Res call({String cod, int message, int cnt, List<Timestamp> list});
}

/// @nodoc
class _$HourlyForecastCopyWithImpl<$Res, $Val extends HourlyForecast>
    implements $HourlyForecastCopyWith<$Res> {
  _$HourlyForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Timestamp>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HourlyForecastCopyWith<$Res>
    implements $HourlyForecastCopyWith<$Res> {
  factory _$$_HourlyForecastCopyWith(
          _$_HourlyForecast value, $Res Function(_$_HourlyForecast) then) =
      __$$_HourlyForecastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cod, int message, int cnt, List<Timestamp> list});
}

/// @nodoc
class __$$_HourlyForecastCopyWithImpl<$Res>
    extends _$HourlyForecastCopyWithImpl<$Res, _$_HourlyForecast>
    implements _$$_HourlyForecastCopyWith<$Res> {
  __$$_HourlyForecastCopyWithImpl(
      _$_HourlyForecast _value, $Res Function(_$_HourlyForecast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
  }) {
    return _then(_$_HourlyForecast(
      cod: null == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Timestamp>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourlyForecast
    with DiagnosticableTreeMixin
    implements _HourlyForecast {
  const _$_HourlyForecast(
      {required this.cod,
      required this.message,
      required this.cnt,
      required final List<Timestamp> list})
      : _list = list;

  factory _$_HourlyForecast.fromJson(Map<String, dynamic> json) =>
      _$$_HourlyForecastFromJson(json);

  @override
  final String cod;
  @override
  final int message;
  @override
  final int cnt;
// Number of timestamps
  final List<Timestamp> _list;
// Number of timestamps
  @override
  List<Timestamp> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HourlyForecast(cod: $cod, message: $message, cnt: $cnt, list: $list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HourlyForecast'))
      ..add(DiagnosticsProperty('cod', cod))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('cnt', cnt))
      ..add(DiagnosticsProperty('list', list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HourlyForecast &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HourlyForecastCopyWith<_$_HourlyForecast> get copyWith =>
      __$$_HourlyForecastCopyWithImpl<_$_HourlyForecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourlyForecastToJson(
      this,
    );
  }
}

abstract class _HourlyForecast implements HourlyForecast {
  const factory _HourlyForecast(
      {required final String cod,
      required final int message,
      required final int cnt,
      required final List<Timestamp> list}) = _$_HourlyForecast;

  factory _HourlyForecast.fromJson(Map<String, dynamic> json) =
      _$_HourlyForecast.fromJson;

  @override
  String get cod;
  @override
  int get message;
  @override
  int get cnt;
  @override // Number of timestamps
  List<Timestamp> get list;
  @override
  @JsonKey(ignore: true)
  _$$_HourlyForecastCopyWith<_$_HourlyForecast> get copyWith =>
      throw _privateConstructorUsedError;
}
