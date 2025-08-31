import 'package:core_storage/src/secure/secure_storage.dart';
import 'package:core_storage/src/shared_preference/shared_preference_storage.dart';
import 'package:core_storage/storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

@InjectableInit.microPackage(preferRelativeImports: true)
Future<void> initMicroPackage() async {}

/// 외부에서 쓸 로컬 스토리지 모듈
@module
abstract class LocalStorageModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @LazySingleton(as: SharedPreferenceStorage)
  SharedPreferenceStorageImpl preferenceStorage(SharedPreferences prefs) =>
      SharedPreferenceStorageImpl(prefs);

  @LazySingleton(as: SecureStorage)
  SecureStorageImpl secureStorage() => SecureStorageImpl();
}
