import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final sl = GetIt.instance;

@InjectableInit.microPackage(
  preferRelativeImports: true,
  externalPackageModulesBefore: [],
)
Future<void> initMicroPackage() async {}
// @InjectableInit(
//   initializerName: 'init',
//   preferRelativeImports: true,
//   asExtension: true,
//   externalPackageModulesBefore: [
//     // ExternalModule(ToolNetworkPackageModule), // 네트워크 모듈
//     // ExternalModule(CoreStoragePackageModule), // 로컬 스토리지 모듈
//   ],
// )
// Future<void> configureDependencies() async => await sl.init();
