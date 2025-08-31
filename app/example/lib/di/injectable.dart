import 'package:core_storage/storage.dart';
import 'package:example/di/injectable.config.dart';
import 'package:feature_test/test.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tool_network/network.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  externalPackageModulesBefore: [
    ExternalModule(ToolNetworkPackageModule), // 네트워크 모듈
    ExternalModule(CoreStoragePackageModule), // 로컬 스토리지 모듈
    ExternalModule(FeatureTestPackageModule), // 테스트 모듈
  ],
)
Future<void> configureDependencies() async => await sl.init();
