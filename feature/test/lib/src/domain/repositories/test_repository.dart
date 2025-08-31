import 'package:core_util/util.dart';

abstract class TestRepository {
  Future<Either<Failure, String>> test();
}
