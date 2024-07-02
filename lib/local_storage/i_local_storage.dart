abstract interface class ILocalStorage {
  Future<bool> update({required String key, required String value});

  Future<bool> remove(String key);

  String? get(String key);
}
