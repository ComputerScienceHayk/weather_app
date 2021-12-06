import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/location_failure.dart';
import 'package:geolocator_platform_interface/src/models/position.dart';
import 'package:dartz/dartz.dart';
import 'package:pro_area_flutter_task_v2/weather/domain/location_repository.dart';

class LocationRepositoryImpl implements LocationRepository {
  final SharedPreferences prefs;
  LocationRepositoryImpl(this.prefs);

  @override
  Future<Either<LocationFailure, Position>> determineLocation() async {
    // Test if location services are enabled.
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return left(const LocationFailure.locationDisabled());
    }
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(const LocationFailure.denied());
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return left(const LocationFailure.deniedForever());
    }
    final currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    prefs.setString('CACHED_LOCATION', jsonEncode(currentPosition));
    return right(currentPosition);
  }
}
