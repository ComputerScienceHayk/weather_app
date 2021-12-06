import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_failure.freezed.dart';

@freezed
class LocationFailure with _$LocationFailure {
  const LocationFailure._();
  const factory LocationFailure.locationDisabled([String? msg]) = _LocationDisabled;
  const factory LocationFailure.denied([String? msg]) = _Denied;
  const factory LocationFailure.deniedForever([String? msg]) = _DeniedForever;
}
