abstract class SharedPreferenceStorage {
  Future<bool> write({required String key, required String value});
  Future<String?> read({required String key});
  Future<bool> remove({required String key});
  Future<bool> clear();
}
