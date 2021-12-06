part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const WeatherState._();
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.success(Fresh<Weather> weather) = _Success;
  const factory WeatherState.failure(WeatherFailure failure) = _Failure;
}
