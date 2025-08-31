import 'package:core_storage/src/shared_preference/shared_preference_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceStorageImpl implements SharedPreferenceStorage {
  final SharedPreferences _prefs;

  SharedPreferenceStorageImpl(this._prefs);

  @override
  Future<bool> write({required String key, required String value}) async {
    return _prefs.setString(key, value);
  }

  @override
  Future<String?> read({required String key}) async {
    return _prefs.getString(key);
  }

  @override
  Future<bool> remove({required String key}) async {
    return _prefs.remove(key);
  }

  @override
  Future<bool> clear() async {
    return _prefs.clear();
  }
}
