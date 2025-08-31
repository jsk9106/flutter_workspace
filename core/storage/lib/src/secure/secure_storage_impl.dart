import 'package:core_storage/src/secure/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageImpl implements SecureStorage {
  final _secureStorage = const FlutterSecureStorage();
  final _cache = <String, String>{};

  Future<String?> read({required String key}) async {
    if (_cache.containsKey(key)) {
      return _cache[key];
    }
    final value = await _secureStorage.read(key: key);
    if (value != null) {
      _cache[key] = value;
      return value;
    }

    return null;
  }

  Future<void> write({required String key, required String value}) async {
    await _secureStorage.write(key: key, value: value);
    _cache[key] = value;
  }

  Future<void> remove({required String key}) async {
    _cache.remove(key);
    await _secureStorage.delete(key: key);
  }

  Future<void> clear() async {
    _cache.clear();
    await _secureStorage.deleteAll();
  }
}
