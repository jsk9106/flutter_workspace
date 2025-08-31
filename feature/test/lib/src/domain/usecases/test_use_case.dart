import 'package:core_util/util.dart';
import 'package:feature_test/src/domain/repositories/test_repository.dart';

@lazySingleton
class TestUseCase extends UseCase<String, void> {
  final TestRepository _repository;

  TestUseCase(this._repository);

  @override
  Future<Either<Failure, String>> execute([void params]) {
    return _repository.test();
  }
}
