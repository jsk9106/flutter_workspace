//@GeneratedMicroModule;ToolNetworkPackageModule;package:tool_network/src/di/injectable.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:core_network/network.dart' as _i545;
import 'package:injectable/injectable.dart' as _i526;

import '../api/notification_api.dart' as _i5;
import '../api/post_api.dart' as _i935;
import '../api/profile_api.dart' as _i79;
import '../rest/rest_client.dart' as _i211;

class ToolNetworkPackageModule extends _i526.MicroPackageModule {
  // initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i545.RestClient>(() => _i211.FRestClient());
    gh.lazySingleton<_i79.ProfileApi>(
      () => _i79.ProfileApi(gh<_i545.RestClient>()),
    );
    gh.lazySingleton<_i935.PostApi>(
      () => _i935.PostApi(gh<_i545.RestClient>()),
    );
    gh.lazySingleton<_i5.NotificationApi>(
      () => _i5.NotificationApi(gh<_i545.RestClient>()),
    );
  }
}
