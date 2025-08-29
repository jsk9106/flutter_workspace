import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? errorMessage;

  const Failure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class PlatformFailure extends Failure {
  const PlatformFailure([super.errorMessage]);
}

/// General failures
class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure([super.errorMessage, this.statusCode = 500]);
}

/// FlutterSecureStorage write failure
class StorageWriteFailure extends Failure {
  final dynamic exception;

  const StorageWriteFailure([super.errorMessage, this.exception]);
}

/// FlutterSecureStorage read failure
class StorageReadFailure extends Failure {
  const StorageReadFailure([super.errorMessage]);
}

/// JWT decode failure
class JWTDecodeFailure extends Failure {
  const JWTDecodeFailure([super.errorMessage]);
}

/// 데이터 없음
class NoDataFailure extends Failure {
  const NoDataFailure([super.errorMessage]);
}

/// 잘못된 요청
class BadRequestFailure extends Failure {
  const BadRequestFailure([super.errorMessage]);
}

/// 토큰이 유효하지 않음
class InvalidTokenFailure extends Failure {
  const InvalidTokenFailure([super.errorMessage]);
}

/// 잘못된 비밀번호
class InvalidPasswordFailure extends Failure {
  const InvalidPasswordFailure([super.errorMessage]);
}

/// 네트워크 없음
class NetworkFailure extends Failure {
  const NetworkFailure([super.errorMessage]);
}
