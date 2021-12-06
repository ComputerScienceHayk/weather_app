import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:pro_area_flutter_task_v2/auth/infrastructure/account_dto.dart';
import 'package:pro_area_flutter_task_v2/core/infrastucture/exceptions.dart';

class CacheAuthLocalServiceImpl {
  final List<AccountDto> _cachedAccountNames = [];
  String? _lastCachedAccount;
  final SharedPreferences _prefs;

  List<AccountDto> get cachedAccountNames => _cachedAccountNames;
  String? get lastCachedAccount => _lastCachedAccount;
  // set setLastCachedAccount(String? unit) {
  //   _lastCachedAccount = unit;
  // }

  CacheAuthLocalServiceImpl(this._prefs);

  Future<void> cacheAccount(AccountDto accountDtoToCache) {
    _lastCachedAccount = accountDtoToCache.displayName;
    _cachedAccountNames.add(accountDtoToCache);
    return _prefs.setString(
      accountDtoToCache.displayName,
      jsonEncode(accountDtoToCache.toJson()),
    );
  }

  Future<AccountDto> readAccount(String accountName) {
    final jsonString = _prefs.getString(accountName);
    if (jsonString != null) {
      return Future.value(AccountDto.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  removeLastCachedAccount() {
    _lastCachedAccount = null;
  }
}
