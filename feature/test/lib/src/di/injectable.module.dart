//@GeneratedMicroModule;FeatureTestPackageModule;package:feature_test/src/di/injectable.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:tool_network/network.dart' as _i879;

import '../data/repositories/test_repository_impl.dart' as _i841;
import '../domain/repositories/test_repository.dart' as _i587;
import '../domain/usecases/test_use_case.dart' as _i1031;
import '../presentation/blocs/test_cuib.dart' as _i220;

class FeatureTestPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i587.TestRepository>(
        () => _i841.TestRepositoryImpl(gh<_i879.NotificationApi>()));
    gh.lazySingleton<_i1031.TestUseCase>(
        () => _i1031.TestUseCase(gh<_i587.TestRepository>()));
    gh.factory<_i220.TestCuib>(() => _i220.TestCuib(gh<_i1031.TestUseCase>()));
  }
}
