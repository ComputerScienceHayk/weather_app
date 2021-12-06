import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/account.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthInitial()) {
    on<WatchAuthChanges>((event, emit) async* {
      await for (Account? account in _authRepository.watchAccountAuthState()) {
        if (account != null) {
          emit(Authenticated(account));
        } else {
          emit(NotAuthenticated());
        }
      }
    });
  }
}
