import 'package:core_network/network.dart';
import 'package:example/app.dart';
import 'package:example/di/injectable.dart';
import 'package:example/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// 개발 환경 설정
  F.appFlavor = Flavor.values.firstWhere(
    (element) => element.name == appFlavor,
  );

  /// 의존성 주입
  await configureDependencies();

  /// 네트워크 초기화
  sl<RestClient>().update(baseUrl: 'http://127.0.0.1:3000');

  runApp(const App());
}
