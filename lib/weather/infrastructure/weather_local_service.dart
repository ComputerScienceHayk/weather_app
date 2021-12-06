import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:pro_area_flutter_task_v2/core/infrastucture/exceptions.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/weather_dto.dart';

abstract class WeatherLocalService {
  Future<bool> cacheWeather(WeatherDto weatherToCache);
  Future<WeatherDto> getLastWeatherDto();
}

const CACHED_WEATHER = 'CACHED_WEATHER';

class WeatherLocalServiceImpl implements WeatherLocalService {
  final SharedPreferences prefs;
  WeatherLocalServiceImpl(this.prefs);

  @override
  Future<bool> cacheWeather(WeatherDto weatherToCache) {
    return prefs.setString(CACHED_WEATHER, jsonEncode(weatherToCache));
  }

  @override
  Future<WeatherDto> getLastWeatherDto() {
    final jsonString = prefs.getString(CACHED_WEATHER);
    if (jsonString != null) {
      final dtos = WeatherDto.fromJson(jsonDecode(jsonString));
      return Future.value(dtos);
    } else {
      throw CacheException();
    }
  }

  // @override
  // Future<bool> cacheDailyWeather(List<DailyWeatherDto> dailyWeatherToCache) {
  //   return prefs.setString(CACHED_DAILY_WEATHER, jsonEncode(dailyWeatherToCache));
  // }

  // @override
  // Future<List<DailyWeatherDto>> getLastDailyWeatherDto() {
  //   final jsonString = prefs.getString(CACHED_DAILY_WEATHER);
  //   if (jsonString != null) {
  //     final dtos = (jsonDecode(jsonString) as List).map((e) => DailyWeatherDto.fromJson(e)).toList();
  //     return Future.value(dtos);
  //   } else {
  //     throw CacheException();
  //   }
  // }

  // @override
  // Future<bool> cacheHourlyWeather(List<HourlyWeatherDto> hourlyweatherToCache) {
  //   return prefs.setString(CACHED_DAILY_WEATHER, jsonEncode(hourlyweatherToCache));
  // }

  // @override
  // Future<List<HourlyWeatherDto>> getLastHourlyWeatherDto() {
  //   final jsonString = prefs.getString(CACHED_HOURLY_WEATHER);
  //   if (jsonString != null) {
  //     final dtos = (jsonDecode(jsonString) as List).map((e) => HourlyWeatherDto.fromJson(e)).toList();
  //     return Future.value(dtos);
  //   } else {
  //     throw CacheException();
  //   }
  // }
}
