import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pro_area_flutter_task_v2/core/domain/fresh.dart';
import 'package:pro_area_flutter_task_v2/weather/application/location_cubit/location_cubit.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather_failure.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/weather_repository.dart';

part 'weather_cubit.freezed.dart';
part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  final LocationCubit locationCubit;
  WeatherCubit(
    this._weatherRepository, {
    required this.locationCubit,
  }) : super(const WeatherState.initial()) {
    locationCubitSubscription = locationCubit.stream.listen((LocationState state) {
      state.maybeWhen(
        failure: (l) {
          ///if location is disabled, then fetch the weather for default Kiev location
          _refreshWeather(50.450001, 50.450001, _lang!);
        },
        success: (position) {
          _refreshWeather(position.latitude, position.longitude, _lang!);
        },
        orElse: () {},
      );
    });
  }
  String? _lang;
  Future<void> getWeather(String lang) async {
    _lang = lang;
    locationCubit.fetchLocation();
  }

  late StreamSubscription locationCubitSubscription;

  _refreshWeather(double lat, double lon, String lang) async {
    emit(const WeatherState.loading());
    final weatherOrFailure = await _weatherRepository.getWeather(lat, lon, _lang!);
    emit(weatherOrFailure.fold(
      (l) => WeatherState.failure(l),
      (weather) => WeatherState.success(weather),
    ));
  }
}
