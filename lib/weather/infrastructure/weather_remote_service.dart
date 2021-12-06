import 'package:pro_area_flutter_task_v2/core/infrastucture/remote_response.dart';
import 'package:pro_area_flutter_task_v2/weather/core/infrastructure/weather_api_client.dart';
import 'package:pro_area_flutter_task_v2/weather/core/infrastructure/weather_remote_service_base.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/weather_dto.dart';

abstract class WeatherRemoteService {
  Future<RemoteResponse<WeatherDto>> fetchWeatherAll(double lat, double lon, String lang);
  // Future<RemoteResponse<List<DailyWeatherDto>>> fetchDailyWeather(double lat, double lon);
  // Future<RemoteResponse<List<HourlyWeatherDto>>> fetchHourlyWeather(double lat, double lon);
}

class WeatherRemoteServiceImpl extends WeatherRemoteServiceBase implements WeatherRemoteService {
  late WeatherApiClient apiClient;
  WeatherRemoteServiceImpl(apiClient) : super(apiClient);

  @override
  Future<RemoteResponse<WeatherDto>> fetchWeatherAll(double lat, double lon, String lang) async => super.fetchWeather(
        lat: lat,
        lon: lon,
        lang: lang,
        dtoDataSelector: (WeatherDto dto) => dto,
      );

}
