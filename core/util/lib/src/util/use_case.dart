import 'package:core_util/src/util/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> execute([Params params]);
}
