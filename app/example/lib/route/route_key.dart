import 'package:core_util/util.dart';
import 'package:flutter/material.dart';

@singleton
class RouteKey {
  final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shell0NavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shell1NavigatorKey =
      GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> getShellNavigatorKey(int index) {
    switch (index) {
      case 0:
        return shell0NavigatorKey;
      case 1:
        return shell1NavigatorKey;
      default:
        return rootNavigatorKey;
    }
  }

  BuildContext get rootContext => rootNavigatorKey.currentContext!;
  BuildContext shellContext(int index) =>
      getShellNavigatorKey(index).currentContext!;
}
