//@GeneratedMicroModule;ToolNetworkPackageModule;package:tool_network/src/di/injectable.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_network/network.dart' as _i545;
import 'package:injectable/injectable.dart' as _i526;

import '../../network.dart' as _i647;
import 'injectable.dart' as _i1027;

class ToolNetworkPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i545.RestClient>(() => networkModule.restClient);
    gh.lazySingleton<_i647.NotificationApi>(
        () => networkModule.notificationApi(gh<_i545.RestClient>()));
    gh.lazySingleton<_i647.PostApi>(
        () => networkModule.postApi(gh<_i545.RestClient>()));
    gh.lazySingleton<_i647.ProfileApi>(
        () => networkModule.profileApi(gh<_i545.RestClient>()));
  }
}

class _$NetworkModule extends _i1027.NetworkModule {}
