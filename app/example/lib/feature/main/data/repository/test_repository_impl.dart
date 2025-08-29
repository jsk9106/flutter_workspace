import 'package:core_util/util.dart';
import 'package:example/feature/main/domain/repository/test_repository.dart';
import 'package:tool_network/network.dart';

@LazySingleton(as: TestRepository)
class TestRepositoryImpl implements TestRepository {
  final NotificationApi _notificationApi;

  TestRepositoryImpl(this._notificationApi);

  @override
  Future<String> test() async {
    final json = await _notificationApi.test();
    // final json = await Future.value('');
    // TODO: fromJson 과정 필요
    return json;
  }
}
