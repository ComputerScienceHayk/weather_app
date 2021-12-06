import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/account.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_failure.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_repository.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_type.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/account_dto.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/local_service/cache_auth_local_service.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/remote_service/facebook_auth_remote_service.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/remote_service/google_auth_remote_service.dart';
import 'package:pro_area_flutter_task_v2/core/domain/failures.dart';
import 'package:pro_area_flutter_task_v2/core/infrastucture/exceptions.dart';

class AuthRepositoryImpl implements AuthRepository {
  final GoogleAuthRemoteService _googleAuth;
  final FacebookAuthRemoteService _facebookAuth;
  final FirebaseAuth _firebase;
  final CacheAuthLocalServiceImpl _cachedAuth;

  AuthRepositoryImpl(this._googleAuth, this._facebookAuth, this._firebase, this._cachedAuth);

  @override
  Future<Either<AuthFailure, Account>> login(AuthMethod authMethod) async {
    try {
      switch (authMethod) {
        case AuthMethod.google:
          final googleAuthResponse = await _googleAuth.login();
          final AccountDto accountDto = AccountDto.fromUser(googleAuthResponse.user!);
          _cachedAuth.cacheAccount(accountDto);
          return right(accountDto.toDomain());
        case AuthMethod.facebook:
          throw UnimplementedError();
        default:
          throw UnimplementedError();
      }
    } on AuthException {
      return left(AuthFailure('Firebase Auth Failure'));
    } catch (e) {
      return left(UnknownFailure() as AuthFailure);
    }
  }

  @override
  Future<void> logout(AuthMethod unAuthMethod) async {
    switch (unAuthMethod) {
      case AuthMethod.google:
        await _cachedAuth.removeLastCachedAccount();
        return await _googleAuth.logout();
      case AuthMethod.facebook:
        return await _facebookAuth.logout();
      default:
        throw UnimplementedError();
    }
  }

  @override
  Stream<Account?> watchAccountAuthState() async* {
    final firebaseUserState = _firebase.authStateChanges();
    yield* firebaseUserState.map((userEvent) => AccountDto.fromUser(userEvent).toDomain());
  }
}
