import 'package:shared_preferences/shared_preferences.dart';

abstract class ISharedPreference {
  static SharedPreferences? _instance;

  static Future<SharedPreferences> get instance async {
    _instance ??= await SharedPreferences.getInstance();
    return _instance!;
  }

  static Future<bool> setString(String key, String value) async {
    final prefs = await instance;
    return prefs.setString(key, value);
  }

  static Future<String> getString(
    String key, {
    String defaultValue = '',
  }) async {
    final prefs = await instance;
    return prefs.getString(key) ?? defaultValue;
  }
}
