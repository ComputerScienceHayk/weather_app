import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_failure.freezed.dart';

@freezed
class WeatherFailure with _$WeatherFailure {
  const WeatherFailure._();
  const factory WeatherFailure.api(int? errorCode) = _Api;
}
