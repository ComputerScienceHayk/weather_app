import 'package:dartz/dartz.dart';

import 'package:pro_area_flutter_task_v2/core/domain/fresh.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather_failure.dart';

abstract class WeatherRepository {
  Future<Either<WeatherFailure, Fresh<Weather>>> getWeather(double lat, double lon, String lang);
}
