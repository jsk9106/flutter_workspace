import 'package:core_util/util.dart';
import 'package:example/feature/main/presentation/page/main_page.dart';
import 'package:example/feature/splash/presentation/%08page/splash_bloc_provider.dart';
import 'package:example/feature/splash/presentation/%08page/splash_page.dart';
import 'package:example/route/route_key.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// 라우트 타입
/// [root] : 루트 라우트
/// [branch] : 브랜치 라우트
enum RouteType { root, branch }

enum AppRoute {
  splash(routeType: RouteType.root),
  home(routeType: RouteType.root),
  detail(),
  my(routeType: RouteType.root);

  final RouteType routeType;

  const AppRoute({this.routeType = RouteType.branch});

  String get path {
    if (routeType == RouteType.root) return '/$name';
    return name;
  }
}

@singleton
class AppRouter {
  final RouteKey _routeKey;

  // Declare as late final
  late final List<RouteBase> _routes;
  late final GoRouter routerConfig;
  late final GoRoute _splashRoute;
  late final StatefulShellRoute _shellRoute;
  late final StatefulShellBranch _homeBranch;
  late final StatefulShellBranch _myBranch;

  AppRouter(this._routeKey) {
    /// 스플래시 라우트
    _splashRoute = _goRoute(
      AppRoute.splash,
      builder: (context, state) {
        return const SplashBlocProvider(child: SplashPage());
      },
    );

    /// Home 라우트
    _homeBranch = StatefulShellBranch(
      navigatorKey: _routeKey.getShellNavigatorKey(0),
      routes: [
        _goRoute(
          AppRoute.home,
          builder: (context, state) {
            return const Center(child: Text('Home'));
          },
          routes: [
            _goRoute(
              AppRoute.detail,
              builder: (context, state) {
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ],
    );

    /// My 라우트
    _myBranch = StatefulShellBranch(
      navigatorKey: _routeKey.getShellNavigatorKey(1),
      routes: [
        _goRoute(
          AppRoute.my,
          builder: (context, state) {
            return const Center(child: Text('My'));
          },
        ),
      ],
    );

    /// Shell 라우트
    _shellRoute = StatefulShellRoute.indexedStack(
      branches: <StatefulShellBranch>[_homeBranch, _myBranch],
      builder: (context, state, navigationShell) =>
          MainPage(navigationShell: navigationShell),
    );

    /// 전체 라우트
    _routes = [_shellRoute, _splashRoute];

    /// GoRouter 설정
    routerConfig = GoRouter(
      initialLocation: AppRoute.splash.path,
      navigatorKey: _routeKey.rootNavigatorKey,
      observers: [],
      debugLogDiagnostics: true,
      redirect: null,
      routes: _routes,
      errorBuilder: (context, state) =>
          Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
    );
  }

  /// 라우트 생성 함수
  GoRoute _goRoute(
    AppRoute route, {
    required Widget Function(BuildContext, GoRouterState) builder,
    List<RouteBase> routes = const [],
    GlobalKey<NavigatorState>? parentNavigatorKey,
  }) {
    return GoRoute(
      parentNavigatorKey: parentNavigatorKey,
      path: route.path,
      name: route.name,
      pageBuilder: (context, state) {
        return MaterialPage(key: state.pageKey, child: builder(context, state));
      },
      routes: routes,
    );
  }
}
