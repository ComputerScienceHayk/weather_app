// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDto _$$_WeatherDtoFromJson(Map<String, dynamic> json) =>
    _$_WeatherDto(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      locationTimezone: json['timezone'] as String,
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => HourlyWeatherDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => DailyWeatherDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherDtoToJson(_$_WeatherDto instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.locationTimezone,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

_$_HourlyWeatherDto _$$_HourlyWeatherDtoFromJson(Map<String, dynamic> json) =>
    _$_HourlyWeatherDto(
      hourDateTime: json['dt'] as int,
      temp: (json['temp'] as num).toDouble(),
      weatherInfo: (json['weather'] as List<dynamic>)
          .map((e) => WeatherInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HourlyWeatherDtoToJson(_$_HourlyWeatherDto instance) =>
    <String, dynamic>{
      'dt': instance.hourDateTime,
      'temp': instance.temp,
      'weather': instance.weatherInfo,
    };

_$_DailyWeatherDto _$$_DailyWeatherDtoFromJson(Map<String, dynamic> json) =>
    _$_DailyWeatherDto(
      dayDateTime: json['dt'] as int,
      temp: TempDto.fromJson(json['temp'] as Map<String, dynamic>),
      humidity: json['humidity'] as int,
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      weatherInfo: (json['weather'] as List<dynamic>)
          .map((e) => WeatherInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DailyWeatherDtoToJson(_$_DailyWeatherDto instance) =>
    <String, dynamic>{
      'dt': instance.dayDateTime,
      'temp': instance.temp,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'weather': instance.weatherInfo,
    };

_$_WeatherInfoDto _$$_WeatherInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_WeatherInfoDto(
      id: json['id'] as int,
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_WeatherInfoDtoToJson(_$_WeatherInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$_TempDto _$$_TempDtoFromJson(Map<String, dynamic> json) => _$_TempDto(
      day: (json['day'] as num).toDouble(),
      night: (json['night'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TempDtoToJson(_$_TempDto instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
    };
