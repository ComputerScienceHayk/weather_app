// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) {
  return _WeatherDto.fromJson(json);
}

/// @nodoc
class _$WeatherDtoTearOff {
  const _$WeatherDtoTearOff();

  _WeatherDto call(
      {required double lat,
      required double lon,
      @JsonKey(name: 'timezone') required String locationTimezone,
      required List<HourlyWeatherDto> hourly,
      required List<DailyWeatherDto> daily}) {
    return _WeatherDto(
      lat: lat,
      lon: lon,
      locationTimezone: locationTimezone,
      hourly: hourly,
      daily: daily,
    );
  }

  WeatherDto fromJson(Map<String, Object> json) {
    return WeatherDto.fromJson(json);
  }
}

/// @nodoc
const $WeatherDto = _$WeatherDtoTearOff();

/// @nodoc
mixin _$WeatherDto {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  String get locationTimezone => throw _privateConstructorUsedError;
  List<HourlyWeatherDto> get hourly => throw _privateConstructorUsedError;
  List<DailyWeatherDto> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDtoCopyWith<WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDtoCopyWith<$Res> {
  factory $WeatherDtoCopyWith(
          WeatherDto value, $Res Function(WeatherDto) then) =
      _$WeatherDtoCopyWithImpl<$Res>;
  $Res call(
      {double lat,
      double lon,
      @JsonKey(name: 'timezone') String locationTimezone,
      List<HourlyWeatherDto> hourly,
      List<DailyWeatherDto> daily});
}

/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res> implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._value, this._then);

  final WeatherDto _value;
  // ignore: unused_field
  final $Res Function(WeatherDto) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? locationTimezone = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      locationTimezone: locationTimezone == freezed
          ? _value.locationTimezone
          : locationTimezone // ignore: cast_nullable_to_non_nullable
              as String,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeatherDto>,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeatherDto>,
    ));
  }
}

/// @nodoc
abstract class _$WeatherDtoCopyWith<$Res> implements $WeatherDtoCopyWith<$Res> {
  factory _$WeatherDtoCopyWith(
          _WeatherDto value, $Res Function(_WeatherDto) then) =
      __$WeatherDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {double lat,
      double lon,
      @JsonKey(name: 'timezone') String locationTimezone,
      List<HourlyWeatherDto> hourly,
      List<DailyWeatherDto> daily});
}

/// @nodoc
class __$WeatherDtoCopyWithImpl<$Res> extends _$WeatherDtoCopyWithImpl<$Res>
    implements _$WeatherDtoCopyWith<$Res> {
  __$WeatherDtoCopyWithImpl(
      _WeatherDto _value, $Res Function(_WeatherDto) _then)
      : super(_value, (v) => _then(v as _WeatherDto));

  @override
  _WeatherDto get _value => super._value as _WeatherDto;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? locationTimezone = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_WeatherDto(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      locationTimezone: locationTimezone == freezed
          ? _value.locationTimezone
          : locationTimezone // ignore: cast_nullable_to_non_nullable
              as String,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeatherDto>,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeatherDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherDto extends _WeatherDto {
  const _$_WeatherDto(
      {required this.lat,
      required this.lon,
      @JsonKey(name: 'timezone') required this.locationTimezone,
      required this.hourly,
      required this.daily})
      : super._();

  factory _$_WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDtoFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  @JsonKey(name: 'timezone')
  final String locationTimezone;
  @override
  final List<HourlyWeatherDto> hourly;
  @override
  final List<DailyWeatherDto> daily;

  @override
  String toString() {
    return 'WeatherDto(lat: $lat, lon: $lon, locationTimezone: $locationTimezone, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherDto &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)) &&
            (identical(other.locationTimezone, locationTimezone) ||
                const DeepCollectionEquality()
                    .equals(other.locationTimezone, locationTimezone)) &&
            (identical(other.hourly, hourly) ||
                const DeepCollectionEquality().equals(other.hourly, hourly)) &&
            (identical(other.daily, daily) ||
                const DeepCollectionEquality().equals(other.daily, daily)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(lon) ^
      const DeepCollectionEquality().hash(locationTimezone) ^
      const DeepCollectionEquality().hash(hourly) ^
      const DeepCollectionEquality().hash(daily);

  @JsonKey(ignore: true)
  @override
  _$WeatherDtoCopyWith<_WeatherDto> get copyWith =>
      __$WeatherDtoCopyWithImpl<_WeatherDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDtoToJson(this);
  }
}

abstract class _WeatherDto extends WeatherDto {
  const factory _WeatherDto(
      {required double lat,
      required double lon,
      @JsonKey(name: 'timezone') required String locationTimezone,
      required List<HourlyWeatherDto> hourly,
      required List<DailyWeatherDto> daily}) = _$_WeatherDto;
  const _WeatherDto._() : super._();

  factory _WeatherDto.fromJson(Map<String, dynamic> json) =
      _$_WeatherDto.fromJson;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'timezone')
  String get locationTimezone => throw _privateConstructorUsedError;
  @override
  List<HourlyWeatherDto> get hourly => throw _privateConstructorUsedError;
  @override
  List<DailyWeatherDto> get daily => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherDtoCopyWith<_WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyWeatherDto _$HourlyWeatherDtoFromJson(Map<String, dynamic> json) {
  return _HourlyWeatherDto.fromJson(json);
}

/// @nodoc
class _$HourlyWeatherDtoTearOff {
  const _$HourlyWeatherDtoTearOff();

  _HourlyWeatherDto call(
      {@JsonKey(name: 'dt') required int hourDateTime,
      required double temp,
      @JsonKey(name: 'weather') required List<WeatherInfoDto> weatherInfo}) {
    return _HourlyWeatherDto(
      hourDateTime: hourDateTime,
      temp: temp,
      weatherInfo: weatherInfo,
    );
  }

  HourlyWeatherDto fromJson(Map<String, Object> json) {
    return HourlyWeatherDto.fromJson(json);
  }
}

/// @nodoc
const $HourlyWeatherDto = _$HourlyWeatherDtoTearOff();

/// @nodoc
mixin _$HourlyWeatherDto {
  @JsonKey(name: 'dt')
  int get hourDateTime => throw _privateConstructorUsedError;
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<WeatherInfoDto> get weatherInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyWeatherDtoCopyWith<HourlyWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherDtoCopyWith<$Res> {
  factory $HourlyWeatherDtoCopyWith(
          HourlyWeatherDto value, $Res Function(HourlyWeatherDto) then) =
      _$HourlyWeatherDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dt') int hourDateTime,
      double temp,
      @JsonKey(name: 'weather') List<WeatherInfoDto> weatherInfo});
}

/// @nodoc
class _$HourlyWeatherDtoCopyWithImpl<$Res>
    implements $HourlyWeatherDtoCopyWith<$Res> {
  _$HourlyWeatherDtoCopyWithImpl(this._value, this._then);

  final HourlyWeatherDto _value;
  // ignore: unused_field
  final $Res Function(HourlyWeatherDto) _then;

  @override
  $Res call({
    Object? hourDateTime = freezed,
    Object? temp = freezed,
    Object? weatherInfo = freezed,
  }) {
    return _then(_value.copyWith(
      hourDateTime: hourDateTime == freezed
          ? _value.hourDateTime
          : hourDateTime // ignore: cast_nullable_to_non_nullable
              as int,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      weatherInfo: weatherInfo == freezed
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfoDto>,
    ));
  }
}

/// @nodoc
abstract class _$HourlyWeatherDtoCopyWith<$Res>
    implements $HourlyWeatherDtoCopyWith<$Res> {
  factory _$HourlyWeatherDtoCopyWith(
          _HourlyWeatherDto value, $Res Function(_HourlyWeatherDto) then) =
      __$HourlyWeatherDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dt') int hourDateTime,
      double temp,
      @JsonKey(name: 'weather') List<WeatherInfoDto> weatherInfo});
}

/// @nodoc
class __$HourlyWeatherDtoCopyWithImpl<$Res>
    extends _$HourlyWeatherDtoCopyWithImpl<$Res>
    implements _$HourlyWeatherDtoCopyWith<$Res> {
  __$HourlyWeatherDtoCopyWithImpl(
      _HourlyWeatherDto _value, $Res Function(_HourlyWeatherDto) _then)
      : super(_value, (v) => _then(v as _HourlyWeatherDto));

  @override
  _HourlyWeatherDto get _value => super._value as _HourlyWeatherDto;

  @override
  $Res call({
    Object? hourDateTime = freezed,
    Object? temp = freezed,
    Object? weatherInfo = freezed,
  }) {
    return _then(_HourlyWeatherDto(
      hourDateTime: hourDateTime == freezed
          ? _value.hourDateTime
          : hourDateTime // ignore: cast_nullable_to_non_nullable
              as int,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      weatherInfo: weatherInfo == freezed
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfoDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HourlyWeatherDto extends _HourlyWeatherDto {
  const _$_HourlyWeatherDto(
      {@JsonKey(name: 'dt') required this.hourDateTime,
      required this.temp,
      @JsonKey(name: 'weather') required this.weatherInfo})
      : super._();

  factory _$_HourlyWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$$_HourlyWeatherDtoFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int hourDateTime;
  @override
  final double temp;
  @override
  @JsonKey(name: 'weather')
  final List<WeatherInfoDto> weatherInfo;

  @override
  String toString() {
    return 'HourlyWeatherDto(hourDateTime: $hourDateTime, temp: $temp, weatherInfo: $weatherInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HourlyWeatherDto &&
            (identical(other.hourDateTime, hourDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.hourDateTime, hourDateTime)) &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.weatherInfo, weatherInfo) ||
                const DeepCollectionEquality()
                    .equals(other.weatherInfo, weatherInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hourDateTime) ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(weatherInfo);

  @JsonKey(ignore: true)
  @override
  _$HourlyWeatherDtoCopyWith<_HourlyWeatherDto> get copyWith =>
      __$HourlyWeatherDtoCopyWithImpl<_HourlyWeatherDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HourlyWeatherDtoToJson(this);
  }
}

abstract class _HourlyWeatherDto extends HourlyWeatherDto {
  const factory _HourlyWeatherDto(
      {@JsonKey(name: 'dt')
          required int hourDateTime,
      required double temp,
      @JsonKey(name: 'weather')
          required List<WeatherInfoDto> weatherInfo}) = _$_HourlyWeatherDto;
  const _HourlyWeatherDto._() : super._();

  factory _HourlyWeatherDto.fromJson(Map<String, dynamic> json) =
      _$_HourlyWeatherDto.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get hourDateTime => throw _privateConstructorUsedError;
  @override
  double get temp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'weather')
  List<WeatherInfoDto> get weatherInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HourlyWeatherDtoCopyWith<_HourlyWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyWeatherDto _$DailyWeatherDtoFromJson(Map<String, dynamic> json) {
  return _DailyWeatherDto.fromJson(json);
}

/// @nodoc
class _$DailyWeatherDtoTearOff {
  const _$DailyWeatherDtoTearOff();

  _DailyWeatherDto call(
      {@JsonKey(name: 'dt') required int dayDateTime,
      required TempDto temp,
      required int humidity,
      double? windSpeed,
      @JsonKey(name: 'weather') required List<WeatherInfoDto> weatherInfo}) {
    return _DailyWeatherDto(
      dayDateTime: dayDateTime,
      temp: temp,
      humidity: humidity,
      windSpeed: windSpeed,
      weatherInfo: weatherInfo,
    );
  }

  DailyWeatherDto fromJson(Map<String, Object> json) {
    return DailyWeatherDto.fromJson(json);
  }
}

/// @nodoc
const $DailyWeatherDto = _$DailyWeatherDtoTearOff();

/// @nodoc
mixin _$DailyWeatherDto {
  @JsonKey(name: 'dt')
  int get dayDateTime => throw _privateConstructorUsedError;
  TempDto get temp => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<WeatherInfoDto> get weatherInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyWeatherDtoCopyWith<DailyWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherDtoCopyWith<$Res> {
  factory $DailyWeatherDtoCopyWith(
          DailyWeatherDto value, $Res Function(DailyWeatherDto) then) =
      _$DailyWeatherDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'dt') int dayDateTime,
      TempDto temp,
      int humidity,
      double? windSpeed,
      @JsonKey(name: 'weather') List<WeatherInfoDto> weatherInfo});

  $TempDtoCopyWith<$Res> get temp;
}

/// @nodoc
class _$DailyWeatherDtoCopyWithImpl<$Res>
    implements $DailyWeatherDtoCopyWith<$Res> {
  _$DailyWeatherDtoCopyWithImpl(this._value, this._then);

  final DailyWeatherDto _value;
  // ignore: unused_field
  final $Res Function(DailyWeatherDto) _then;

  @override
  $Res call({
    Object? dayDateTime = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? weatherInfo = freezed,
  }) {
    return _then(_value.copyWith(
      dayDateTime: dayDateTime == freezed
          ? _value.dayDateTime
          : dayDateTime // ignore: cast_nullable_to_non_nullable
              as int,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TempDto,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherInfo: weatherInfo == freezed
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfoDto>,
    ));
  }

  @override
  $TempDtoCopyWith<$Res> get temp {
    return $TempDtoCopyWith<$Res>(_value.temp, (value) {
      return _then(_value.copyWith(temp: value));
    });
  }
}

/// @nodoc
abstract class _$DailyWeatherDtoCopyWith<$Res>
    implements $DailyWeatherDtoCopyWith<$Res> {
  factory _$DailyWeatherDtoCopyWith(
          _DailyWeatherDto value, $Res Function(_DailyWeatherDto) then) =
      __$DailyWeatherDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'dt') int dayDateTime,
      TempDto temp,
      int humidity,
      double? windSpeed,
      @JsonKey(name: 'weather') List<WeatherInfoDto> weatherInfo});

  @override
  $TempDtoCopyWith<$Res> get temp;
}

/// @nodoc
class __$DailyWeatherDtoCopyWithImpl<$Res>
    extends _$DailyWeatherDtoCopyWithImpl<$Res>
    implements _$DailyWeatherDtoCopyWith<$Res> {
  __$DailyWeatherDtoCopyWithImpl(
      _DailyWeatherDto _value, $Res Function(_DailyWeatherDto) _then)
      : super(_value, (v) => _then(v as _DailyWeatherDto));

  @override
  _DailyWeatherDto get _value => super._value as _DailyWeatherDto;

  @override
  $Res call({
    Object? dayDateTime = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? weatherInfo = freezed,
  }) {
    return _then(_DailyWeatherDto(
      dayDateTime: dayDateTime == freezed
          ? _value.dayDateTime
          : dayDateTime // ignore: cast_nullable_to_non_nullable
              as int,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TempDto,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      weatherInfo: weatherInfo == freezed
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfoDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyWeatherDto extends _DailyWeatherDto {
  const _$_DailyWeatherDto(
      {@JsonKey(name: 'dt') required this.dayDateTime,
      required this.temp,
      required this.humidity,
      this.windSpeed,
      @JsonKey(name: 'weather') required this.weatherInfo})
      : super._();

  factory _$_DailyWeatherDto.fromJson(Map<String, dynamic> json) =>
      _$$_DailyWeatherDtoFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int dayDateTime;
  @override
  final TempDto temp;
  @override
  final int humidity;
  @override
  final double? windSpeed;
  @override
  @JsonKey(name: 'weather')
  final List<WeatherInfoDto> weatherInfo;

  @override
  String toString() {
    return 'DailyWeatherDto(dayDateTime: $dayDateTime, temp: $temp, humidity: $humidity, windSpeed: $windSpeed, weatherInfo: $weatherInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DailyWeatherDto &&
            (identical(other.dayDateTime, dayDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dayDateTime, dayDateTime)) &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)) &&
            (identical(other.windSpeed, windSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.windSpeed, windSpeed)) &&
            (identical(other.weatherInfo, weatherInfo) ||
                const DeepCollectionEquality()
                    .equals(other.weatherInfo, weatherInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(dayDateTime) ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(humidity) ^
      const DeepCollectionEquality().hash(windSpeed) ^
      const DeepCollectionEquality().hash(weatherInfo);

  @JsonKey(ignore: true)
  @override
  _$DailyWeatherDtoCopyWith<_DailyWeatherDto> get copyWith =>
      __$DailyWeatherDtoCopyWithImpl<_DailyWeatherDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyWeatherDtoToJson(this);
  }
}

abstract class _DailyWeatherDto extends DailyWeatherDto {
  const factory _DailyWeatherDto(
      {@JsonKey(name: 'dt')
          required int dayDateTime,
      required TempDto temp,
      required int humidity,
      double? windSpeed,
      @JsonKey(name: 'weather')
          required List<WeatherInfoDto> weatherInfo}) = _$_DailyWeatherDto;
  const _DailyWeatherDto._() : super._();

  factory _DailyWeatherDto.fromJson(Map<String, dynamic> json) =
      _$_DailyWeatherDto.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get dayDateTime => throw _privateConstructorUsedError;
  @override
  TempDto get temp => throw _privateConstructorUsedError;
  @override
  int get humidity => throw _privateConstructorUsedError;
  @override
  double? get windSpeed => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'weather')
  List<WeatherInfoDto> get weatherInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DailyWeatherDtoCopyWith<_DailyWeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherInfoDto _$WeatherInfoDtoFromJson(Map<String, dynamic> json) {
  return _WeatherInfoDto.fromJson(json);
}

/// @nodoc
class _$WeatherInfoDtoTearOff {
  const _$WeatherInfoDtoTearOff();

  _WeatherInfoDto call(
      {required int id, String? main, String? description, String? icon}) {
    return _WeatherInfoDto(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }

  WeatherInfoDto fromJson(Map<String, Object> json) {
    return WeatherInfoDto.fromJson(json);
  }
}

/// @nodoc
const $WeatherInfoDto = _$WeatherInfoDtoTearOff();

/// @nodoc
mixin _$WeatherInfoDto {
  int get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherInfoDtoCopyWith<WeatherInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoDtoCopyWith<$Res> {
  factory $WeatherInfoDtoCopyWith(
          WeatherInfoDto value, $Res Function(WeatherInfoDto) then) =
      _$WeatherInfoDtoCopyWithImpl<$Res>;
  $Res call({int id, String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherInfoDtoCopyWithImpl<$Res>
    implements $WeatherInfoDtoCopyWith<$Res> {
  _$WeatherInfoDtoCopyWithImpl(this._value, this._then);

  final WeatherInfoDto _value;
  // ignore: unused_field
  final $Res Function(WeatherInfoDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WeatherInfoDtoCopyWith<$Res>
    implements $WeatherInfoDtoCopyWith<$Res> {
  factory _$WeatherInfoDtoCopyWith(
          _WeatherInfoDto value, $Res Function(_WeatherInfoDto) then) =
      __$WeatherInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? main, String? description, String? icon});
}

/// @nodoc
class __$WeatherInfoDtoCopyWithImpl<$Res>
    extends _$WeatherInfoDtoCopyWithImpl<$Res>
    implements _$WeatherInfoDtoCopyWith<$Res> {
  __$WeatherInfoDtoCopyWithImpl(
      _WeatherInfoDto _value, $Res Function(_WeatherInfoDto) _then)
      : super(_value, (v) => _then(v as _WeatherInfoDto));

  @override
  _WeatherInfoDto get _value => super._value as _WeatherInfoDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_WeatherInfoDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: main == freezed
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherInfoDto extends _WeatherInfoDto {
  const _$_WeatherInfoDto(
      {required this.id, this.main, this.description, this.icon})
      : super._();

  factory _$_WeatherInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherInfoDtoFromJson(json);

  @override
  final int id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'WeatherInfoDto(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherInfoDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.main, main) ||
                const DeepCollectionEquality().equals(other.main, main)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(main) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(icon);

  @JsonKey(ignore: true)
  @override
  _$WeatherInfoDtoCopyWith<_WeatherInfoDto> get copyWith =>
      __$WeatherInfoDtoCopyWithImpl<_WeatherInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherInfoDtoToJson(this);
  }
}

abstract class _WeatherInfoDto extends WeatherInfoDto {
  const factory _WeatherInfoDto(
      {required int id,
      String? main,
      String? description,
      String? icon}) = _$_WeatherInfoDto;
  const _WeatherInfoDto._() : super._();

  factory _WeatherInfoDto.fromJson(Map<String, dynamic> json) =
      _$_WeatherInfoDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get main => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get icon => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherInfoDtoCopyWith<_WeatherInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TempDto _$TempDtoFromJson(Map<String, dynamic> json) {
  return _TempDto.fromJson(json);
}

/// @nodoc
class _$TempDtoTearOff {
  const _$TempDtoTearOff();

  _TempDto call({required double day, required double night}) {
    return _TempDto(
      day: day,
      night: night,
    );
  }

  TempDto fromJson(Map<String, Object> json) {
    return TempDto.fromJson(json);
  }
}

/// @nodoc
const $TempDto = _$TempDtoTearOff();

/// @nodoc
mixin _$TempDto {
  double get day => throw _privateConstructorUsedError;
  double get night => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempDtoCopyWith<TempDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempDtoCopyWith<$Res> {
  factory $TempDtoCopyWith(TempDto value, $Res Function(TempDto) then) =
      _$TempDtoCopyWithImpl<$Res>;
  $Res call({double day, double night});
}

/// @nodoc
class _$TempDtoCopyWithImpl<$Res> implements $TempDtoCopyWith<$Res> {
  _$TempDtoCopyWithImpl(this._value, this._then);

  final TempDto _value;
  // ignore: unused_field
  final $Res Function(TempDto) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TempDtoCopyWith<$Res> implements $TempDtoCopyWith<$Res> {
  factory _$TempDtoCopyWith(_TempDto value, $Res Function(_TempDto) then) =
      __$TempDtoCopyWithImpl<$Res>;
  @override
  $Res call({double day, double night});
}

/// @nodoc
class __$TempDtoCopyWithImpl<$Res> extends _$TempDtoCopyWithImpl<$Res>
    implements _$TempDtoCopyWith<$Res> {
  __$TempDtoCopyWithImpl(_TempDto _value, $Res Function(_TempDto) _then)
      : super(_value, (v) => _then(v as _TempDto));

  @override
  _TempDto get _value => super._value as _TempDto;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
  }) {
    return _then(_TempDto(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TempDto extends _TempDto {
  const _$_TempDto({required this.day, required this.night}) : super._();

  factory _$_TempDto.fromJson(Map<String, dynamic> json) =>
      _$$_TempDtoFromJson(json);

  @override
  final double day;
  @override
  final double night;

  @override
  String toString() {
    return 'TempDto(day: $day, night: $night)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TempDto &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.night, night) ||
                const DeepCollectionEquality().equals(other.night, night)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(night);

  @JsonKey(ignore: true)
  @override
  _$TempDtoCopyWith<_TempDto> get copyWith =>
      __$TempDtoCopyWithImpl<_TempDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempDtoToJson(this);
  }
}

abstract class _TempDto extends TempDto {
  const factory _TempDto({required double day, required double night}) =
      _$_TempDto;
  const _TempDto._() : super._();

  factory _TempDto.fromJson(Map<String, dynamic> json) = _$_TempDto.fromJson;

  @override
  double get day => throw _privateConstructorUsedError;
  @override
  double get night => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TempDtoCopyWith<_TempDto> get copyWith =>
      throw _privateConstructorUsedError;
}
