///***************************************************
/// Core Exceptions
///***************************************************
class CacheException implements Exception {}

class NetworkException implements Exception {}

///***************************************************
/// Auth Exceptions
///***************************************************
class AuthException implements Exception {
  final String? message;

  AuthException([this.message]);

  @override
  String toString() {
    if (message == null) {
      return 'Exception';
    }

    return message!;
  }
}

class ApiKeyException implements Exception {
  @override
  String toString() {
    return 'ApiInvalid';
  }
}

class UserNotAuthorized implements Exception {
  @override
  String toString() {
    return 'UserNotAuthorized';
  }
}

class UnknownExeption implements Exception {
  @override
  String toString() {
    return 'Unkown Exeption occured';
  }
}
