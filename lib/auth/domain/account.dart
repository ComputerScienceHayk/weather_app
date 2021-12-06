import 'package:equatable/equatable.dart';

class Account extends Equatable {
  final String username;
  final dynamic photo;
  final String? email;
  final String? phone;
  const Account({required this.username, required this.photo, required this.email, required this.phone});

  @override
  List<Object?> get props => [username, photo, email, photo];
}
