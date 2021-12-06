import 'package:dartz/dartz.dart';

import 'package:pro_area_flutter_task_v2/core/domain/fresh.dart';
import 'package:pro_area_flutter_task_v2/core/infrastucture/network_exceptions.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather_failure.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather_repository.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/weather_local_service.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/weather_remote_service.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteService _remoteService;
  final WeatherLocalService _localService;

  WeatherRepositoryImpl(this._remoteService, this._localService);

  @override
  Future<Either<WeatherFailure, Fresh<Weather>>> getWeather(double lat, double lon, String lang) async {
    try {
      final remoteResponse = await _remoteService.fetchWeatherAll(lat, lon, lang);
      return right(
        await remoteResponse.when(
          noConnection: () async => Fresh.no(await _localService.getLastWeatherDto().then((_) => _.toDomain())),
          withNewData: (weatherDto) {
            _localService.cacheWeather(weatherDto);
            return Fresh.yes(weatherDto.toDomain());
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(WeatherFailure.api(e.errorCode));
    }
  }
}
