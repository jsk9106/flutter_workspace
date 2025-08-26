// import 'package:core_util/util.dart';
// import 'package:feature_auth/src/screen/login.dart';
// import 'package:flutter/material.dart';

// enum AuthRoute {
//   auth,
//   login,
//   unknown;

//   static String encode(AuthRoute value) => value.path;

//   static AuthRoute decode(String value) => AuthRoute.values.firstWhere(
//     (e) => e.path == value,
//     orElse: () => AuthRoute.unknown,
//   );
// }

// extension AuthRouteExtension on AuthRoute {
//   String get path {
//     if (this == AuthRoute.auth) return '/$name';
//     // if (this == AuthRoute.login) return '/$name';

//     return '${AuthRoute.auth.path}/$name';
//   }
// }

// abstract class IAuthRoutes {
//   static final List<ModularRoute> routes = AuthRoute.values.map(_find).toList();

//   static ModularRoute _find(AuthRoute route) {
//     return ChildRoute(
//       route.path,
//       child: (context) => findScreen(Uri.parse(route.path)),
//       transition: _findTransitionType(route),
//     );
//   }

//   static TransitionType? _findTransitionType(AuthRoute route) {
//     switch (route) {
//       default:
//         return null;
//     }
//   }

//   static Widget findScreen(Uri uri) {
//     final AuthRoute route = AuthRoute.decode(uri.path);
//     switch (route) {
//       case AuthRoute.auth:
//         return const SizedBox();
//       case AuthRoute.login:
//         return const LoginScreen();
//       case AuthRoute.unknown:
//         return const SizedBox();
//     }
//   }
// }

// abstract class ICommunityRouteTo {
//   static Future<T?> push<T extends Object?>({
//     required AuthRoute route,
//     Map<String, String>? queryParameters,
//   }) {
//     return Modular.to.pushNamed<T>(route.path, arguments: queryParameters);
//   }

//   static Future<void> login() {
//     return push<void>(route: AuthRoute.login);
//   }
// }
