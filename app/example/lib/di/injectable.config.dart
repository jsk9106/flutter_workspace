// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core_storage/storage.dart' as _i932;
import 'package:feature_test/test.dart' as _i579;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tool_network/network.dart' as _i879;

import '../presentation/blocs/%08splash_load_cubit.dart' as _i610;
import '../route/app_router.dart' as _i1007;
import '../route/route_key.dart' as _i917;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    await _i879.ToolNetworkPackageModule().init(gh);
    await _i932.CoreStoragePackageModule().init(gh);
    await _i579.FeatureTestPackageModule().init(gh);
    gh.factory<_i610.SplashLoadCubit>(() => _i610.SplashLoadCubit());
    gh.singleton<_i917.RouteKey>(() => _i917.RouteKey());
    gh.singleton<_i1007.AppRouter>(
      () => _i1007.AppRouter(gh<_i917.RouteKey>()),
    );
    return this;
  }
}
