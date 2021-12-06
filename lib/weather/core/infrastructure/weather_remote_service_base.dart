import 'package:dio/dio.dart';
import 'package:pro_area_flutter_task_v2/core/infrastucture/dio_extensions.dart';
import 'package:pro_area_flutter_task_v2/core/infrastucture/network_exceptions.dart';
import 'package:pro_area_flutter_task_v2/core/infrastucture/remote_response.dart';
import 'package:pro_area_flutter_task_v2/weather/core/infrastructure/weather_api_client.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/weather_dto.dart';

abstract class WeatherRemoteServiceBase {
  final WeatherApiClient _apiClient;
  WeatherRemoteServiceBase(this._apiClient);

  Future<RemoteResponse<T>> fetchWeather<T>({
    required double lat,
    required double lon,
    required String lang,
    required T Function(WeatherDto dto) dtoDataSelector,
  }) async {
    try {
      final response = await _apiClient.dio.get('lat=$lat&lon=$lon&lang=$lang');
      if (response.statusCode == 200) {
        final WeatherDto weatherDto = WeatherDto.fromJson(response.data as Map<String, dynamic>);
        return RemoteResponse.withNewData(dtoDataSelector(weatherDto));
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
