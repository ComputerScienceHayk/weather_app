part of 'sign_in_cubit.dart';

@immutable
class SignInState extends Equatable {
  final bool isSubmitting;
  const SignInState({this.isSubmitting = false});
  // SignInState copyWith(bool isSubmitting) {
  //   return SignInState(isSubmitting: isSubmitting);
  // }

  @override
  List<Object> get props => [];
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {
  const SignInLoading() : super(isSubmitting: true);
}

class SignInSuccess extends SignInState {
  final Account account;

  const SignInSuccess(this.account);
  @override
  List<Object> get props => [account];
}

class SignInFailure extends SignInState {
  final AuthFailure authFailure;
  SignInFailure(this.authFailure);

  @override
  List<Object> get props => [authFailure];
}
