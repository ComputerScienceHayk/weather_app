import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

///***************************************************
/// Core Failures
///***************************************************
class CacheFailure extends Failure {
  @override
  String toString() => 'Cache Failure';
}

class ServerFailure extends Failure {}

class UnknownFailure extends Failure {}
