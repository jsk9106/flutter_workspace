import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fooponote/flavors.dart';
import 'package:fooponote/module/module.dart';
import 'package:tool_base_theme/theme.dart';

// enum Phase {
//   real('http://127.0.0.1:8181', false),
//   qa('http://127.0.0.1:8080', true);

//   final String baseUrl;
//   final bool debugShowCheckedModeBanner;

//   const Phase(this.baseUrl, this.debugShowCheckedModeBanner);
// }

Future<void> run() async {
  // final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // await ICoreFirebase.initialize();
  // await ICoreFirebaseRemoteConfig.initialize();
  // await ICoreFirebaseRemoteConfig.fetchAndActivate();
  // Modular.setInitialRoute(FooponoteRoute.splash.path);
  runApp(
    ModularApp(
      module: AppModule(),
      child: ClindApp(
        debugShowCheckedModeBanner: F.appFlavor.debugShowCheckedModeBanner,
      ),
    ),
  );
}

class ClindApp extends StatefulWidget {
  final bool debugShowCheckedModeBanner;

  const ClindApp({super.key, this.debugShowCheckedModeBanner = false});

  @override
  State<ClindApp> createState() => _ClindAppState();
}

class _ClindAppState extends State<ClindApp> {
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   FlutterNativeSplash.remove();
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FooponoteTheme(
      themeData: FooponoteThemeData.light(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
        themeMode: ThemeMode.light,
        localizationsDelegates: [...GlobalMaterialLocalizations.delegates],
        supportedLocales: [const Locale('ko')],
        routerConfig: Modular.routerConfig,
        builder: (context, child) => child!,
      ),
    );
  }
}
