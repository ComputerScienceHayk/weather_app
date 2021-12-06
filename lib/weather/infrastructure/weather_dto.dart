import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather.dart';
part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
class WeatherDto with _$WeatherDto {
  const WeatherDto._();
  const factory WeatherDto({
    required double lat,
    required double lon,
    @JsonKey(name: 'timezone') required String locationTimezone,
    required List<HourlyWeatherDto> hourly,
    required List<DailyWeatherDto> daily,
  }) = _WeatherDto;
  factory WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);

  Weather toDomain() {
    return Weather(
      lat: lat,
      lon: lon,
      location: locationTimezone,
      hourly: hourly.map((dto) => dto.toDomain()).toList(),
      daily: daily.map((dto) => dto.toDomain()).toList(),
    );
  }
}

@freezed
class HourlyWeatherDto with _$HourlyWeatherDto {
  const HourlyWeatherDto._();
  const factory HourlyWeatherDto({
    @JsonKey(name: 'dt') required int hourDateTime,
    required double temp,
    @JsonKey(name: 'weather') required List<WeatherInfoDto> weatherInfo,
  }) = _HourlyWeatherDto;
  factory HourlyWeatherDto.fromJson(Map<String, dynamic> json) => _$HourlyWeatherDtoFromJson(json);
  HourlyWeather toDomain() {
    return HourlyWeather(
      hourDateTime: DateTime.fromMillisecondsSinceEpoch(hourDateTime * 1000),
      temp: Temp(temp: temp),
      weatherInfo: weatherInfo.map((dto) => dto.toDomain()).toList(),
    );
  }
}

@freezed
class DailyWeatherDto with _$DailyWeatherDto {
  const DailyWeatherDto._();
  const factory DailyWeatherDto({
    @JsonKey(name: 'dt') required int dayDateTime,
    required TempDto temp,
    required int humidity,
    double? windSpeed,
    @JsonKey(name: 'weather') required List<WeatherInfoDto> weatherInfo,
  }) = _DailyWeatherDto;
  factory DailyWeatherDto.fromJson(Map<String, dynamic> json) => _$DailyWeatherDtoFromJson(json);
  DailyWeather toDomain() {
    return DailyWeather(
      dayDateTime: DateTime.fromMillisecondsSinceEpoch(dayDateTime * 1000),
      temp: temp.toDomain(),
      humidity: humidity,
      weatherInfo: weatherInfo.map((dto) => dto.toDomain()).toList(),
    );
  }
}

@freezed
class WeatherInfoDto with _$WeatherInfoDto {
  const WeatherInfoDto._();
  const factory WeatherInfoDto({
    required int id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherInfoDto;
  factory WeatherInfoDto.fromJson(Map<String, dynamic> json) => _$WeatherInfoDtoFromJson(json);
  WeatherInfo toDomain() {
    return WeatherInfo(
      id: id,
      main: main,
      description: description,
      icon: icon,
    );
  }
}

@freezed
class TempDto with _$TempDto {
  const TempDto._();
  const factory TempDto({
    required double day,
    required double night,
  }) = _TempDto;
  factory TempDto.fromJson(Map<String, dynamic> json) => _$TempDtoFromJson(json);
  Temps toDomain() {
    return Temps(
      day: Temp(temp: day),
      night: Temp(temp: night),
    );
  }
}
