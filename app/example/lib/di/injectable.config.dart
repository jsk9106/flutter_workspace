// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tool_network/network.dart' as _i879;

import '../feature/main/data/repository/test_repository_impl.dart' as _i696;
import '../feature/main/domain/repository/test_repository.dart' as _i786;
import '../feature/main/domain/use_case/test_use_case.dart' as _i888;
import '../feature/main/presentation/cubit/bottom_nav_cubit.dart' as _i489;
import '../feature/main/presentation/cubit/test_cuib.dart' as _i770;
import '../feature/splash/presentation/cubit/init_cubit.dart' as _i471;
import '../route/route.dart' as _i74;
import '../route/route_key.dart' as _i917;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    await _i879.ToolNetworkPackageModule().init(gh);
    gh.factory<_i471.SplashLoadCubit>(() => _i471.SplashLoadCubit());
    gh.singleton<_i917.RouteKey>(() => _i917.RouteKey());
    gh.lazySingleton<_i489.BottomNavCubit>(() => _i489.BottomNavCubit());
    gh.singleton<_i74.AppRouter>(() => _i74.AppRouter(gh<_i917.RouteKey>()));
    gh.lazySingleton<_i786.TestRepository>(
      () => _i696.TestRepositoryImpl(gh<_i879.NotificationApi>()),
    );
    gh.lazySingleton<_i888.TestUseCase>(
      () => _i888.TestUseCase(gh<_i786.TestRepository>()),
    );
    gh.factory<_i770.TestCuib>(() => _i770.TestCuib(gh<_i888.TestUseCase>()));
    return this;
  }
}
