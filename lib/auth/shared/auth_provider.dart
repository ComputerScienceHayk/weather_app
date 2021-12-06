import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pro_area_flutter_task_v2/auth/application/auth/auth_bloc.dart';
import 'package:pro_area_flutter_task_v2/auth/application/sign_in/sign_in_cubit.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_repository.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/auth_repository_impl.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/local_service/cache_auth_local_service.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/remote_service/facebook_auth_remote_service.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/remote_service/google_auth_remote_service.dart';
import 'package:pro_area_flutter_task_v2/core/shared/service_locators.dart';

Future<void> authProvider() async {
  // -------------------------------Business Logic-------------------------------//
  getIt.registerFactory(() => AuthBloc(getIt<AuthRepository>()));
  getIt.registerLazySingleton(() => SignInCubit(getIt<AuthRepository>()));

  // -------------------------------Repositories----------------------------------//
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      getIt<GoogleAuthRemoteService>(),
      getIt<FacebookAuthRemoteService>(),
      getIt<FirebaseAuth>(),
      getIt<CacheAuthLocalServiceImpl>(),
    ),
  );
  // -------------------------------External Services------------------------------//
  getIt.registerLazySingleton(() => GoogleAuthRemoteService(
        getIt<FirebaseAuth>(),
        getIt<GoogleSignIn>(),
      ));
  getIt.registerLazySingleton(() => FacebookAuthRemoteService(
      // getIt<FirebaseAuth>(),
      // getIt<GoogleSignIn>(),
      ));

  getIt.registerLazySingleton(() => CacheAuthLocalServiceImpl(getIt<SharedPreferences>()));
  getIt.registerLazySingleton(() => FirebaseAuth.instance);
  getIt.registerLazySingleton(() => GoogleSignIn());
}
