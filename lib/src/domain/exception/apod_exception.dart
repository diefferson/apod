
class ApodException implements Exception {
  ApodException({
    this.errorCode = '0',
    this.message = '',
    this.title,
    this.cause,
  });

  String errorCode;
  String message;
  String? title;
  dynamic cause;
}

final class UnexpectedException extends ApodException {
  UnexpectedException({super.cause,super.errorCode, super.message, super.title});
}

final class NotFoundException extends ApodException {
  NotFoundException({super.errorCode, super.message});
}

final class UnauthorizedException extends ApodException {
  UnauthorizedException({super.errorCode, super.message, super.cause});
}

final class ServerException extends ApodException {
  ServerException({super.errorCode, super.message, super.cause});
}



