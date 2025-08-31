import 'package:example/di/injectable.dart';
import 'package:example/flavors.dart';
import 'package:example/route/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tool_theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FTheme(
      themeData: FThemeData.light(),
      child: MaterialApp.router(
        title: F.title,
        themeMode: ThemeMode.system,
        localizationsDelegates: [...GlobalMaterialLocalizations.delegates],
        supportedLocales: [const Locale('ko')],
        routerConfig: sl<AppRouter>().routerConfig,
      ),
    );
  }
}
