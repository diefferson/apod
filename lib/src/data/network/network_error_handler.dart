import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:apod/src/domain/exception/error_handler.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class NetworkErrorHandler implements ErrorHandler {
  @override
  ApodException handle(exception) {
    if (exception is ApodException) {
      return exception;
    }

    if (exception is DioException) {
      return _handleDioError(exception);
    }

    return UnexpectedException(cause: exception);
  }

  ApodException _handleDioError(DioException exception) {
    if (exception.error is ApodException) {
      return exception.error as ApodException;
    } else if (exception.error is PlatformException) {
      return _handlePlatformException(exception.error as PlatformException);
    }

    if (exception.response != null) {
      return _handleResponseException(exception, exception.response!);
    }

    return UnexpectedException(cause: exception);
  }

  ApodException _handleResponseException(
    DioException exception,
    Response response,
  ) {
    switch (exception.response?.statusCode) {
      case 301:
      case 302:
      case 401:
        return UnauthorizedException(
          errorCode: _getResponseCode(response) ??
              response.statusCode?.toString() ??
              '',
          message: _getResponseMessage(response) ?? exception.message ?? "",
          cause: exception,
        );
      case 404:
        return NotFoundException(
          errorCode: _getResponseCode(response) ??
              response.statusCode?.toString() ??
              '',
          message: _getResponseMessage(response) ?? exception.message ?? "",
        );
      default:
        return ServerException(
          errorCode: _getResponseCode(response) ??
              response.statusCode?.toString() ??
              '',
          message: _getResponseMessage(response) ?? exception.message ?? "",
          cause: exception,
        );
    }
  }

  String? _getResponseCode(Response response) {
    try {
      final Map map = response.data;
      return map["code"];
    } catch (_) {
      return null;
    }
  }

  String? _getResponseMessage(Response response) {
    try {
      final Map map = response.data;
      return map["msg"];
    } catch (_) {
      return null;
    }
  }

  ApodException _handlePlatformException(PlatformException exception) {
    return UnexpectedException(cause: exception);
  }
}
