import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/location_failure.dart';

abstract class LocationRepository {
  Future<Either<LocationFailure, Position>> determineLocation();
}
