import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pro_area_flutter_task_v2/core/shared/service_locators.dart';
import 'package:pro_area_flutter_task_v2/weather/application/location_cubit/location_cubit.dart';
import 'package:pro_area_flutter_task_v2/weather/application/weather_cubit/weather_cubit.dart';
import 'package:pro_area_flutter_task_v2/weather/core/infrastructure/weather_api_client.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/location_repository.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather_repository.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/location_repository_impl.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/weather_local_service.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/weather_remote_service.dart';
import 'package:pro_area_flutter_task_v2/weather/infrastructure/weather_repository_impl.dart';

Future<void> weatherProvider() async {
  getIt.registerFactory(() => WeatherCubit(
        getIt<WeatherRepository>(),
        locationCubit: getIt<LocationCubit>(),
      ));

  getIt.registerFactory(() => LocationCubit(getIt<LocationRepository>()));

  getIt.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl(
        getIt<WeatherRemoteService>(),
        getIt<WeatherLocalService>(),
      ));

  getIt.registerLazySingleton<LocationRepository>(() => LocationRepositoryImpl(getIt<SharedPreferences>()));

  getIt.registerLazySingleton<WeatherRemoteService>(() => WeatherRemoteServiceImpl(getIt<WeatherApiClient>()));
  getIt.registerLazySingleton<WeatherLocalService>(() => WeatherLocalServiceImpl(getIt<SharedPreferences>()));

  getIt.registerLazySingleton(() => WeatherApiClient(getIt<Dio>()));
}
