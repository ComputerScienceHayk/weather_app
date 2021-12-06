part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const LocationState._();
  const factory LocationState.initial() = _Initial;
  const factory LocationState.loading() = _Loading;
  const factory LocationState.success(Position position) = _Success;
  const factory LocationState.failure(LocationFailure failure) = _Failure;
}
