import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required double lat,
    required double lon,
    required String location,
    required List<HourlyWeather> hourly,
    required List<DailyWeather> daily,
  }) = _Weather;
}

@freezed
class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    required DateTime hourDateTime,
    required Temp temp,
    required List<WeatherInfo> weatherInfo,
  }) = _HourlyWeather;
}

@freezed
class DailyWeather with _$DailyWeather {
  const factory DailyWeather({
    required DateTime dayDateTime,
    required Temps temp,
    required int humidity,
    double? windSpeed,
    required List<WeatherInfo> weatherInfo,
  }) = _DailyWeather;
}

@freezed
class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    required int id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherInfo;
}

@freezed
class Temps with _$Temps {
  const factory Temps({
    required Temp day,
    required Temp night,
  }) = _Temps;
}

@freezed
class Temp with _$Temp {
  const Temp._();
  const factory Temp({
    required double temp,
  }) = _Temp;
  double get celsius => temp - 273.15;
}
