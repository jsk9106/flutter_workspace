import 'package:core_util/util.dart';
import 'package:example/feature/main/domain/repository/test_repository.dart';

@lazySingleton
class TestUseCase extends UseCase<String, void> {
  final TestRepository _repository;

  TestUseCase(this._repository);

  @override
  Future<String> execute([void params]) {
    return _repository.test();
  }
}
