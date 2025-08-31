//@GeneratedMicroModule;CoreStoragePackageModule;package:core_storage/src/di/injectable.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../secure/secure_storage.dart' as _i727;
import '../shared_preference/shared_preference_storage.dart' as _i462;
import 'injectable.dart' as _i1027;

class CoreStoragePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) async {
    final localStorageModule = _$LocalStorageModule();
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => localStorageModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i462.SharedPreferenceStorage>(() =>
        localStorageModule.preferenceStorage(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i727.SecureStorage>(
        () => localStorageModule.secureStorage());
  }
}

class _$LocalStorageModule extends _i1027.LocalStorageModule {}
