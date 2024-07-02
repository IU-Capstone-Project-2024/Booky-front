import 'package:shared_preferences/shared_preferences.dart';

import 'i_local_storage.dart';

late final SharedPreferences preferences;

class LocalStorage implements ILocalStorage {
  factory LocalStorage() {
    _instance ??= LocalStorage._();
    return _instance!;
  }

  LocalStorage._() {
    _instance = this;
  }

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

  static LocalStorage? _instance;
}
