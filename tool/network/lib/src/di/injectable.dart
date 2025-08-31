import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final sl = GetIt.instance;

@InjectableInit.microPackage(preferRelativeImports: true)
Future<void> initMicroPackage() async {}

// /// 외부에서 쓸 네트워크 모듈
// @module
// abstract class NetworkModule {
//   @LazySingleton(as: RestClient)
//   FRestClient restClient() => FRestClient();

//   @lazySingleton
//   NotificationApi notificationApi(RestClient client) => NotificationApi(client);

//   @lazySingleton
//   PostApi postApi(RestClient client) => PostApi(client);

//   @lazySingleton
//   ProfileApi profileApi(RestClient client) => ProfileApi(client);
// }
