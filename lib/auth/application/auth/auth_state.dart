part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class Authenticated extends AuthState {
  final Account account;

  const Authenticated(this.account);
  @override
  List<Object> get props => [account];
}

class NotAuthenticated extends AuthState {}
