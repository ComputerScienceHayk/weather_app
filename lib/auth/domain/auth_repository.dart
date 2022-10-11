import 'package:dartz/dartz.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_failure.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_type.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/account.dart';

abstract class AuthRepository {
  Stream<Account?> watchAccountAuthState();
  Future<Either<AuthFailure, Account>> login(AuthMethod authMethod);
  Future<void> logout(AuthMethod unAuthMethod);
}
