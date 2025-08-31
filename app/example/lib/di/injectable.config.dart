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

import '../feature/home/data/repository/test_repository_impl.dart' as _i454;
import '../feature/home/domain/repository/test_repository.dart' as _i289;
import '../feature/home/domain/use_case/test_use_case.dart' as _i141;
import '../feature/home/presentation/bloc/test_cuib.dart' as _i133;
import '../presentation/blocs/splash_load_cubit.dart' as _i291;
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
    gh.factory<_i291.SplashLoadCubit>(() => _i291.SplashLoadCubit());
    gh.singleton<_i917.RouteKey>(() => _i917.RouteKey());
    gh.singleton<_i1007.AppRouter>(
      () => _i1007.AppRouter(gh<_i917.RouteKey>()),
    );
    gh.lazySingleton<_i289.TestRepository>(
      () => _i454.TestRepositoryImpl(gh<_i879.NotificationApi>()),
    );
    gh.lazySingleton<_i141.TestUseCase>(
      () => _i141.TestUseCase(gh<_i289.TestRepository>()),
    );
    gh.factory<_i133.TestCuib>(() => _i133.TestCuib(gh<_i141.TestUseCase>()));
    return this;
  }
}
