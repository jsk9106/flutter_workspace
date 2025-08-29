import 'package:core_storage/src/shared_preference/shared_preference_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final sl = GetIt.instance;

@InjectableInit.microPackage(preferRelativeImports: true)
Future<void> initMicroPackage() async {}

/// 외부에서 쓸 네트워크 모듈
@module
abstract class StorageModule {
   // SharedPreferences.getInstance()가 완료될 때까지 기다린 후,
   // 그 결과를 싱글톤으로 등록합니다.
  //  @preResolve
  //  @lazySingleton
  //  Future<SharedPreferenceStorage> get prefs => SharedPreferenceStorage();
 
   // IPreferenceStorage를 요청하면,
   // 위에서 등록한 SharedPreferences 인스턴스를 주입해서
   // SharedPreferenceStorage를 생성한 후, 싱글톤으로 반환합니다.
   @lazySingleton(as: )
   SharedPreferenceStorage preferenceStorage(SharedPreferences prefs) =>
       SharedPreferenceStorage(prefs);
}
