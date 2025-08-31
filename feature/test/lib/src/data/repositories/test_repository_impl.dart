import 'package:core_util/util.dart';
import 'package:feature_test/src/domain/repositories/test_repository.dart';
import 'package:tool_network/network.dart';

@LazySingleton(as: TestRepository)
class TestRepositoryImpl implements TestRepository {
  final NotificationApi _notificationApi;

  TestRepositoryImpl(this._notificationApi);

  @override
  Future<Either<Failure, String>> test() async {
    try {
      final json = await _notificationApi.test();
      if (json == null) return const Left(ServerFailure());

      // TODO: fromJson 과정 필요
      return Right(json.toString());
    } catch (e) {
      // TODO: logger 추가
      return Left(ServerFailure(e.toString()));
    }
  }
}
