//@GeneratedMicroModule;ToolNetworkPackageModule;package:tool_network/src/di/injectable.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_network/network.dart' as _i545;
import 'package:injectable/injectable.dart' as _i526;

import '../api/notification_api.dart' as _i177;
import '../api/post_api.dart' as _i150;
import '../api/profile_api.dart' as _i929;
import '../rest/rest_client.dart' as _i211;

class ToolNetworkPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i545.RestClient>(() => _i211.FRestClient());
    gh.lazySingleton<_i177.NotificationApi>(
        () => _i177.NotificationApi(gh<_i545.RestClient>()));
    gh.lazySingleton<_i150.PostApi>(
        () => _i150.PostApi(gh<_i545.RestClient>()));
    gh.lazySingleton<_i929.ProfileApi>(
        () => _i929.ProfileApi(gh<_i545.RestClient>()));
  }
}
