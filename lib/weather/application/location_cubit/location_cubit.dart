import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

import 'package:pro_area_flutter_task_v2/weather/domain/location_failure.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/location_repository.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  final LocationRepository _locationRepository;
  LocationCubit(this._locationRepository) : super(const LocationState.initial());

  Future<void> fetchLocation() async {
    emit(const LocationState.loading());
    final _currentPositionOrFailure = await _locationRepository.determineLocation();
    emit(_currentPositionOrFailure.fold(
      (l) {
        return LocationState.failure(l);
      },
      (r) => LocationState.success(r),
    ));
  }
}
