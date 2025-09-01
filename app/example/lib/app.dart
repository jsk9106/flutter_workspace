import 'package:core_network/network.dart';
import 'package:example/di/injectable.dart';
import 'package:example/flavors.dart';
import 'package:example/route/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tool_theme/theme.dart';

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// 개발 환경 설정
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  // TODO: env 세팅

  /// 의존성 주입
  await configureDependencies();

  /// 네트워크 초기화
  sl<RestClient>().update(baseUrl: 'http://127.0.0.1:3000');

  runApp(const App());
}

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
