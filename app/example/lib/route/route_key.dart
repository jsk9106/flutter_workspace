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
  final GlobalKey<NavigatorState> shell2NavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shell3NavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shell4NavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> shell5NavigatorKey =
      GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> getShellNavigatorKey(int index) {
    switch (index) {
      case 0:
        return shell0NavigatorKey;
      case 1:
        return shell1NavigatorKey;
      case 2:
        return shell2NavigatorKey;
      case 3:
        return shell3NavigatorKey;
      case 4:
        return shell4NavigatorKey;
      case 5:
        return shell5NavigatorKey;
      default:
        return rootNavigatorKey;
    }
  }

  BuildContext get rootContext => rootNavigatorKey.currentContext!;
  BuildContext shellContext(int index) =>
      getShellNavigatorKey(index).currentContext!;
}
