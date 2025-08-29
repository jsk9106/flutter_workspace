import 'package:core_storage/src/local_storage.dart';
import 'package:core_util/util.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceStorage implements LocalStorage {
  static SharedPreferences? _instance;

  @PostConstruct(preResolve: true)
  static Future<SharedPreferences> get instance async {
    _instance ??= await SharedPreferences.getInstance();
    return _instance!;
  }

  @override
  Future<void> write({required String key, required String value}) async {
    final prefs = await instance;
    await prefs.setString(key, value);
  }

  @override
  Future<String?> read({required String key}) async {
    final prefs = await instance;
    return prefs.getString(key);
  }

  @override
  Future<void> remove({required String key}) async {
    final prefs = await instance;
    await prefs.remove(key);
  }

  @override
  Future<void> clear() async {
    final prefs = await instance;
    await prefs.clear();
  }
}
