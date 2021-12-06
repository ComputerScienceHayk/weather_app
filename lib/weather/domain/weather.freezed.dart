// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
      {required double lat,
      required double lon,
      required String location,
      required List<HourlyWeather> hourly,
      required List<DailyWeather> daily}) {
    return _Weather(
      lat: lat,
      lon: lon,
      location: location,
      hourly: hourly,
      daily: daily,
    );
  }
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<HourlyWeather> get hourly => throw _privateConstructorUsedError;
  List<DailyWeather> get daily => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {double lat,
      double lon,
      String location,
      List<HourlyWeather> hourly,
      List<DailyWeather> daily});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? location = freezed,
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
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeather>,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {double lat,
      double lon,
      String location,
      List<HourlyWeather> hourly,
      List<DailyWeather> daily});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? location = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_Weather(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<HourlyWeather>,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyWeather>,
    ));
  }
}

/// @nodoc

class _$_Weather implements _Weather {
  const _$_Weather(
      {required this.lat,
      required this.lon,
      required this.location,
      required this.hourly,
      required this.daily});

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String location;
  @override
  final List<HourlyWeather> hourly;
  @override
  final List<DailyWeather> daily;

  @override
  String toString() {
    return 'Weather(lat: $lat, lon: $lon, location: $location, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Weather &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.lon, lon) ||
                const DeepCollectionEquality().equals(other.lon, lon)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
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
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(hourly) ^
      const DeepCollectionEquality().hash(daily);

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required double lat,
      required double lon,
      required String location,
      required List<HourlyWeather> hourly,
      required List<DailyWeather> daily}) = _$_Weather;

  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get lon => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  List<HourlyWeather> get hourly => throw _privateConstructorUsedError;
  @override
  List<DailyWeather> get daily => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HourlyWeatherTearOff {
  const _$HourlyWeatherTearOff();

  _HourlyWeather call(
      {required DateTime hourDateTime,
      required Temp temp,
      required List<WeatherInfo> weatherInfo}) {
    return _HourlyWeather(
      hourDateTime: hourDateTime,
      temp: temp,
      weatherInfo: weatherInfo,
    );
  }
}

/// @nodoc
const $HourlyWeather = _$HourlyWeatherTearOff();

/// @nodoc
mixin _$HourlyWeather {
  DateTime get hourDateTime => throw _privateConstructorUsedError;
  Temp get temp => throw _privateConstructorUsedError;
  List<WeatherInfo> get weatherInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HourlyWeatherCopyWith<HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherCopyWith<$Res> {
  factory $HourlyWeatherCopyWith(
          HourlyWeather value, $Res Function(HourlyWeather) then) =
      _$HourlyWeatherCopyWithImpl<$Res>;
  $Res call({DateTime hourDateTime, Temp temp, List<WeatherInfo> weatherInfo});

  $TempCopyWith<$Res> get temp;
}

/// @nodoc
class _$HourlyWeatherCopyWithImpl<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  _$HourlyWeatherCopyWithImpl(this._value, this._then);

  final HourlyWeather _value;
  // ignore: unused_field
  final $Res Function(HourlyWeather) _then;

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
              as DateTime,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp,
      weatherInfo: weatherInfo == freezed
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
    ));
  }

  @override
  $TempCopyWith<$Res> get temp {
    return $TempCopyWith<$Res>(_value.temp, (value) {
      return _then(_value.copyWith(temp: value));
    });
  }
}

/// @nodoc
abstract class _$HourlyWeatherCopyWith<$Res>
    implements $HourlyWeatherCopyWith<$Res> {
  factory _$HourlyWeatherCopyWith(
          _HourlyWeather value, $Res Function(_HourlyWeather) then) =
      __$HourlyWeatherCopyWithImpl<$Res>;
  @override
  $Res call({DateTime hourDateTime, Temp temp, List<WeatherInfo> weatherInfo});

  @override
  $TempCopyWith<$Res> get temp;
}

/// @nodoc
class __$HourlyWeatherCopyWithImpl<$Res>
    extends _$HourlyWeatherCopyWithImpl<$Res>
    implements _$HourlyWeatherCopyWith<$Res> {
  __$HourlyWeatherCopyWithImpl(
      _HourlyWeather _value, $Res Function(_HourlyWeather) _then)
      : super(_value, (v) => _then(v as _HourlyWeather));

  @override
  _HourlyWeather get _value => super._value as _HourlyWeather;

  @override
  $Res call({
    Object? hourDateTime = freezed,
    Object? temp = freezed,
    Object? weatherInfo = freezed,
  }) {
    return _then(_HourlyWeather(
      hourDateTime: hourDateTime == freezed
          ? _value.hourDateTime
          : hourDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp,
      weatherInfo: weatherInfo == freezed
          ? _value.weatherInfo
          : weatherInfo // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
    ));
  }
}

/// @nodoc

class _$_HourlyWeather implements _HourlyWeather {
  const _$_HourlyWeather(
      {required this.hourDateTime,
      required this.temp,
      required this.weatherInfo});

  @override
  final DateTime hourDateTime;
  @override
  final Temp temp;
  @override
  final List<WeatherInfo> weatherInfo;

  @override
  String toString() {
    return 'HourlyWeather(hourDateTime: $hourDateTime, temp: $temp, weatherInfo: $weatherInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HourlyWeather &&
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
  _$HourlyWeatherCopyWith<_HourlyWeather> get copyWith =>
      __$HourlyWeatherCopyWithImpl<_HourlyWeather>(this, _$identity);
}

abstract class _HourlyWeather implements HourlyWeather {
  const factory _HourlyWeather(
      {required DateTime hourDateTime,
      required Temp temp,
      required List<WeatherInfo> weatherInfo}) = _$_HourlyWeather;

  @override
  DateTime get hourDateTime => throw _privateConstructorUsedError;
  @override
  Temp get temp => throw _privateConstructorUsedError;
  @override
  List<WeatherInfo> get weatherInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HourlyWeatherCopyWith<_HourlyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DailyWeatherTearOff {
  const _$DailyWeatherTearOff();

  _DailyWeather call(
      {required DateTime dayDateTime,
      required Temps temp,
      required int humidity,
      double? windSpeed,
      required List<WeatherInfo> weatherInfo}) {
    return _DailyWeather(
      dayDateTime: dayDateTime,
      temp: temp,
      humidity: humidity,
      windSpeed: windSpeed,
      weatherInfo: weatherInfo,
    );
  }
}

/// @nodoc
const $DailyWeather = _$DailyWeatherTearOff();

/// @nodoc
mixin _$DailyWeather {
  DateTime get dayDateTime => throw _privateConstructorUsedError;
  Temps get temp => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double? get windSpeed => throw _privateConstructorUsedError;
  List<WeatherInfo> get weatherInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DailyWeatherCopyWith<DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherCopyWith<$Res> {
  factory $DailyWeatherCopyWith(
          DailyWeather value, $Res Function(DailyWeather) then) =
      _$DailyWeatherCopyWithImpl<$Res>;
  $Res call(
      {DateTime dayDateTime,
      Temps temp,
      int humidity,
      double? windSpeed,
      List<WeatherInfo> weatherInfo});

  $TempsCopyWith<$Res> get temp;
}

/// @nodoc
class _$DailyWeatherCopyWithImpl<$Res> implements $DailyWeatherCopyWith<$Res> {
  _$DailyWeatherCopyWithImpl(this._value, this._then);

  final DailyWeather _value;
  // ignore: unused_field
  final $Res Function(DailyWeather) _then;

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
              as DateTime,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temps,
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
              as List<WeatherInfo>,
    ));
  }

  @override
  $TempsCopyWith<$Res> get temp {
    return $TempsCopyWith<$Res>(_value.temp, (value) {
      return _then(_value.copyWith(temp: value));
    });
  }
}

/// @nodoc
abstract class _$DailyWeatherCopyWith<$Res>
    implements $DailyWeatherCopyWith<$Res> {
  factory _$DailyWeatherCopyWith(
          _DailyWeather value, $Res Function(_DailyWeather) then) =
      __$DailyWeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime dayDateTime,
      Temps temp,
      int humidity,
      double? windSpeed,
      List<WeatherInfo> weatherInfo});

  @override
  $TempsCopyWith<$Res> get temp;
}

/// @nodoc
class __$DailyWeatherCopyWithImpl<$Res> extends _$DailyWeatherCopyWithImpl<$Res>
    implements _$DailyWeatherCopyWith<$Res> {
  __$DailyWeatherCopyWithImpl(
      _DailyWeather _value, $Res Function(_DailyWeather) _then)
      : super(_value, (v) => _then(v as _DailyWeather));

  @override
  _DailyWeather get _value => super._value as _DailyWeather;

  @override
  $Res call({
    Object? dayDateTime = freezed,
    Object? temp = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? weatherInfo = freezed,
  }) {
    return _then(_DailyWeather(
      dayDateTime: dayDateTime == freezed
          ? _value.dayDateTime
          : dayDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temps,
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
              as List<WeatherInfo>,
    ));
  }
}

/// @nodoc

class _$_DailyWeather implements _DailyWeather {
  const _$_DailyWeather(
      {required this.dayDateTime,
      required this.temp,
      required this.humidity,
      this.windSpeed,
      required this.weatherInfo});

  @override
  final DateTime dayDateTime;
  @override
  final Temps temp;
  @override
  final int humidity;
  @override
  final double? windSpeed;
  @override
  final List<WeatherInfo> weatherInfo;

  @override
  String toString() {
    return 'DailyWeather(dayDateTime: $dayDateTime, temp: $temp, humidity: $humidity, windSpeed: $windSpeed, weatherInfo: $weatherInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DailyWeather &&
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
  _$DailyWeatherCopyWith<_DailyWeather> get copyWith =>
      __$DailyWeatherCopyWithImpl<_DailyWeather>(this, _$identity);
}

abstract class _DailyWeather implements DailyWeather {
  const factory _DailyWeather(
      {required DateTime dayDateTime,
      required Temps temp,
      required int humidity,
      double? windSpeed,
      required List<WeatherInfo> weatherInfo}) = _$_DailyWeather;

  @override
  DateTime get dayDateTime => throw _privateConstructorUsedError;
  @override
  Temps get temp => throw _privateConstructorUsedError;
  @override
  int get humidity => throw _privateConstructorUsedError;
  @override
  double? get windSpeed => throw _privateConstructorUsedError;
  @override
  List<WeatherInfo> get weatherInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DailyWeatherCopyWith<_DailyWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WeatherInfoTearOff {
  const _$WeatherInfoTearOff();

  _WeatherInfo call(
      {required int id, String? main, String? description, String? icon}) {
    return _WeatherInfo(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }
}

/// @nodoc
const $WeatherInfo = _$WeatherInfoTearOff();

/// @nodoc
mixin _$WeatherInfo {
  int get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherInfoCopyWith<WeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoCopyWith<$Res> {
  factory $WeatherInfoCopyWith(
          WeatherInfo value, $Res Function(WeatherInfo) then) =
      _$WeatherInfoCopyWithImpl<$Res>;
  $Res call({int id, String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherInfoCopyWithImpl<$Res> implements $WeatherInfoCopyWith<$Res> {
  _$WeatherInfoCopyWithImpl(this._value, this._then);

  final WeatherInfo _value;
  // ignore: unused_field
  final $Res Function(WeatherInfo) _then;

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
abstract class _$WeatherInfoCopyWith<$Res>
    implements $WeatherInfoCopyWith<$Res> {
  factory _$WeatherInfoCopyWith(
          _WeatherInfo value, $Res Function(_WeatherInfo) then) =
      __$WeatherInfoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? main, String? description, String? icon});
}

/// @nodoc
class __$WeatherInfoCopyWithImpl<$Res> extends _$WeatherInfoCopyWithImpl<$Res>
    implements _$WeatherInfoCopyWith<$Res> {
  __$WeatherInfoCopyWithImpl(
      _WeatherInfo _value, $Res Function(_WeatherInfo) _then)
      : super(_value, (v) => _then(v as _WeatherInfo));

  @override
  _WeatherInfo get _value => super._value as _WeatherInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_WeatherInfo(
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

class _$_WeatherInfo implements _WeatherInfo {
  const _$_WeatherInfo(
      {required this.id, this.main, this.description, this.icon});

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
    return 'WeatherInfo(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherInfo &&
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
  _$WeatherInfoCopyWith<_WeatherInfo> get copyWith =>
      __$WeatherInfoCopyWithImpl<_WeatherInfo>(this, _$identity);
}

abstract class _WeatherInfo implements WeatherInfo {
  const factory _WeatherInfo(
      {required int id,
      String? main,
      String? description,
      String? icon}) = _$_WeatherInfo;

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
  _$WeatherInfoCopyWith<_WeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TempsTearOff {
  const _$TempsTearOff();

  _Temps call({required Temp day, required Temp night}) {
    return _Temps(
      day: day,
      night: night,
    );
  }
}

/// @nodoc
const $Temps = _$TempsTearOff();

/// @nodoc
mixin _$Temps {
  Temp get day => throw _privateConstructorUsedError;
  Temp get night => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TempsCopyWith<Temps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempsCopyWith<$Res> {
  factory $TempsCopyWith(Temps value, $Res Function(Temps) then) =
      _$TempsCopyWithImpl<$Res>;
  $Res call({Temp day, Temp night});

  $TempCopyWith<$Res> get day;
  $TempCopyWith<$Res> get night;
}

/// @nodoc
class _$TempsCopyWithImpl<$Res> implements $TempsCopyWith<$Res> {
  _$TempsCopyWithImpl(this._value, this._then);

  final Temps _value;
  // ignore: unused_field
  final $Res Function(Temps) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Temp,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as Temp,
    ));
  }

  @override
  $TempCopyWith<$Res> get day {
    return $TempCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value));
    });
  }

  @override
  $TempCopyWith<$Res> get night {
    return $TempCopyWith<$Res>(_value.night, (value) {
      return _then(_value.copyWith(night: value));
    });
  }
}

/// @nodoc
abstract class _$TempsCopyWith<$Res> implements $TempsCopyWith<$Res> {
  factory _$TempsCopyWith(_Temps value, $Res Function(_Temps) then) =
      __$TempsCopyWithImpl<$Res>;
  @override
  $Res call({Temp day, Temp night});

  @override
  $TempCopyWith<$Res> get day;
  @override
  $TempCopyWith<$Res> get night;
}

/// @nodoc
class __$TempsCopyWithImpl<$Res> extends _$TempsCopyWithImpl<$Res>
    implements _$TempsCopyWith<$Res> {
  __$TempsCopyWithImpl(_Temps _value, $Res Function(_Temps) _then)
      : super(_value, (v) => _then(v as _Temps));

  @override
  _Temps get _value => super._value as _Temps;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
  }) {
    return _then(_Temps(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Temp,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as Temp,
    ));
  }
}

/// @nodoc

class _$_Temps implements _Temps {
  const _$_Temps({required this.day, required this.night});

  @override
  final Temp day;
  @override
  final Temp night;

  @override
  String toString() {
    return 'Temps(day: $day, night: $night)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Temps &&
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
  _$TempsCopyWith<_Temps> get copyWith =>
      __$TempsCopyWithImpl<_Temps>(this, _$identity);
}

abstract class _Temps implements Temps {
  const factory _Temps({required Temp day, required Temp night}) = _$_Temps;

  @override
  Temp get day => throw _privateConstructorUsedError;
  @override
  Temp get night => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TempsCopyWith<_Temps> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TempTearOff {
  const _$TempTearOff();

  _Temp call({required double temp}) {
    return _Temp(
      temp: temp,
    );
  }
}

/// @nodoc
const $Temp = _$TempTearOff();

/// @nodoc
mixin _$Temp {
  double get temp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TempCopyWith<Temp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempCopyWith<$Res> {
  factory $TempCopyWith(Temp value, $Res Function(Temp) then) =
      _$TempCopyWithImpl<$Res>;
  $Res call({double temp});
}

/// @nodoc
class _$TempCopyWithImpl<$Res> implements $TempCopyWith<$Res> {
  _$TempCopyWithImpl(this._value, this._then);

  final Temp _value;
  // ignore: unused_field
  final $Res Function(Temp) _then;

  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TempCopyWith<$Res> implements $TempCopyWith<$Res> {
  factory _$TempCopyWith(_Temp value, $Res Function(_Temp) then) =
      __$TempCopyWithImpl<$Res>;
  @override
  $Res call({double temp});
}

/// @nodoc
class __$TempCopyWithImpl<$Res> extends _$TempCopyWithImpl<$Res>
    implements _$TempCopyWith<$Res> {
  __$TempCopyWithImpl(_Temp _value, $Res Function(_Temp) _then)
      : super(_value, (v) => _then(v as _Temp));

  @override
  _Temp get _value => super._value as _Temp;

  @override
  $Res call({
    Object? temp = freezed,
  }) {
    return _then(_Temp(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Temp extends _Temp {
  const _$_Temp({required this.temp}) : super._();

  @override
  final double temp;

  @override
  String toString() {
    return 'Temp(temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Temp &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(temp);

  @JsonKey(ignore: true)
  @override
  _$TempCopyWith<_Temp> get copyWith =>
      __$TempCopyWithImpl<_Temp>(this, _$identity);
}

abstract class _Temp extends Temp {
  const factory _Temp({required double temp}) = _$_Temp;
  const _Temp._() : super._();

  @override
  double get temp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TempCopyWith<_Temp> get copyWith => throw _privateConstructorUsedError;
}
