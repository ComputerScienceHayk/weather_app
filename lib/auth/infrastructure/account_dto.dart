import 'package:firebase_auth/firebase_auth.dart';
import 'package:pro_area_flutter_task_v2/auth/domain/account.dart';

class AccountDto {
  final String displayName;
  final String? email;
  final String? photoUrl;
  final String? phoneNumber;

  AccountDto({required this.displayName, required this.email, required this.photoUrl, required this.phoneNumber});

  factory AccountDto.fromUser(User? user) {
    return AccountDto(
      displayName: user?.displayName != null ? user!.displayName! : '',
      email: user?.email,
      photoUrl: user?.photoURL,
      phoneNumber: user?.phoneNumber,
    );
  }

  Account toDomain() {
    return Account(
      username: displayName,
      photo: photoUrl,
      email: email,
      phone: phoneNumber,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'email': email,
      'phoneNumber': phoneNumber,
      'photoUrl': photoUrl,
    };
  }

  factory AccountDto.fromJson(Map<String, dynamic> json) {
    return AccountDto(
      displayName: json['displayName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      photoUrl: json['photoUrl'],
    );
  }
}
