abstract class LocalStorage {
  Future<void> write({required String key, required String value});
  Future<String?> read({required String key});
  Future<void> remove({required String key});
  Future<void> clear();
}
