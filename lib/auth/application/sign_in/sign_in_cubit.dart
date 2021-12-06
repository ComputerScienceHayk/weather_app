import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/account.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_failure.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_repository.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/auth_type.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  final AuthRepository _authRepository;
  SignInCubit(this._authRepository) : super(SignInInitial());
  AuthMethod? _authMethod;
  Future<void> login(authMethod) async {
    _authMethod = authMethod;
    emit(const SignInLoading());
    final signInOrFailure = await _authRepository.login(authMethod);
    signInOrFailure.fold(
      (authFailure) => emit(SignInFailure(authFailure)),
      (account) => emit(SignInSuccess(account)),
    );
  }

  Future<void> logout() async {
    await _authRepository.logout(_authMethod!);
    _authMethod = null;
  }
}
