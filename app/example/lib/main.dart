import 'dart:async';

import 'package:example/di/injectable.dart';
import 'package:example/route/route.dart';
import 'package:flutter/material.dart';
import 'package:tool_base_theme/theme.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      // await dotenv.load(fileName: F.envPath);
      await configureDependencies();
      runApp(const App());
    },
    (e, s) {
      // log('runZonedGuarded: Caught error: $error');
      // log('runZonedGuarded: StackTrace: $stackTrace');
      // sl<SentryService>().captureException(error, stackTrace: stackTrace);
    },
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FTheme(
      themeData: FThemeData.light(),
      child: MaterialApp.router(
        themeMode: ThemeMode.light,
        routerConfig: sl<AppRouter>().routerConfig,
        supportedLocales: [const Locale('ko')],
      ),
    );
  }
}
