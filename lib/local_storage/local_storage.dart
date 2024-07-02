import 'package:shared_preferences/shared_preferences.dart';

import 'i_local_storage.dart';

late final SharedPreferences preferences;

abstract class LocalStorage implements ILocalStorage {
  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<bool> update({required String key, required String value}) async {
    return await preferences.setString(key, value);
  }

  @override
  Future<bool> remove(String key) async {
    return await preferences.remove(key);
  }

  @override
  String? get(String key) {
    return preferences.getString(key);
  }
}
