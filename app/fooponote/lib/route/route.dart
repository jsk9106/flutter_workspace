import 'package:core_util/util.dart';
import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:fooponote/page/home.dart';

enum FooponoteRoute {
  root,
  // splash,
  unknown;

  static String encode(FooponoteRoute value) => value.path;

  static FooponoteRoute decode(String value) => FooponoteRoute.values
      .firstWhere((e) => e.path == value, orElse: () => FooponoteRoute.unknown);
}

extension FooponoteRouteExtension on FooponoteRoute {
  String get path {
    const String root = '/';
    if (this == FooponoteRoute.root) return root;
    return '$root$name';
  }
}

abstract class IFooponoteRoutes {
  static List<ModularRoute> routes = FooponoteRoute.values.map(_find).toList();

  static ModularRoute _find(FooponoteRoute route) {
    return ChildRoute(
      route.path,
      child: (context) => findScreen(Uri.parse(route.path)),
      transition: _findTransitionType(route),
    );
  }

  static TransitionType? _findTransitionType(FooponoteRoute route) {
    switch (route) {
      default:
        return null;
    }
  }

  static Widget findScreen(Uri uri) {
    final FooponoteRoute route = FooponoteRoute.decode(uri.path);
    switch (route) {
      case FooponoteRoute.root:
        return const HomeBlocProvider(child: HomePage());
      // case FooponoteRoute.splash:
      //   return const SplashPage();
      case FooponoteRoute.unknown:
        return const SizedBox.shrink();
    }
  }
}

abstract class IFooponoteRouteTo {
  static Future<T?> push<T extends Object?>({
    required FooponoteRoute route,
    Map<String, String>? queryParameters,
  }) {
    return Modular.to.pushNamed<T>(route.path, arguments: queryParameters);
  }

  static Future<void> root() {
    return push<void>(route: FooponoteRoute.root);
  }
}
