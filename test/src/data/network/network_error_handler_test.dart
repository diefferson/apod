import 'package:apod/src/data/network/network_error_handler.dart';
import 'package:apod/src/domain/exception/apod_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NetworkErrorHandler', () {
    test(
        'should create NetworkErrorHandler with default values when no arguments are provided',
        () {
      final networkErrorHandler = NetworkErrorHandler();

      expect(networkErrorHandler, isNotNull);
    });

    test('should handle ApodException when handle is called with ApodException',
        () {
      final networkErrorHandler = NetworkErrorHandler();
      final exception = ApodException(errorCode: '0', message: 'Test error');

      final result = networkErrorHandler.handle(exception);

      expect(result, isA<ApodException>());
      expect(result.errorCode, equals('0'));
      expect(result.message, equals('Test error'));
    });

    test('should handle DioException when handle is called with DioException',
        () {
      final networkErrorHandler = NetworkErrorHandler();
      final exception = DioException(
        requestOptions: RequestOptions(path: 'test'),
        error: 'Test error',
      );

      final result = networkErrorHandler.handle(exception);

      expect(result, isA<UnexpectedException>());
    });

    test(
        'should handle PlatformException when handle is called with DioException containing PlatformException',
        () {
      final networkErrorHandler = NetworkErrorHandler();
      final exception = DioException(
        requestOptions: RequestOptions(path: 'test'),
        error: PlatformException(code: '0', message: 'Test error'),
      );

      final result = networkErrorHandler.handle(exception);

      expect(result, isA<UnexpectedException>());
    });

    test(
        'should handle UnauthorizedException when handle is called with DioException containing 401 status code',
        () {
      final networkErrorHandler = NetworkErrorHandler();
      final exception = DioException(
        requestOptions: RequestOptions(path: 'test'),
        response: Response(
          requestOptions: RequestOptions(path: 'test'),
          statusCode: 401,
          data: {'code': '401', 'msg': 'Unauthorized'},
        ),
      );

      final result = networkErrorHandler.handle(exception);

      expect(result, isA<UnauthorizedException>());
      expect(result.errorCode, equals('401'));
      expect(result.message, equals('Unauthorized'));
    });

    test(
        'should handle NotFoundException when handle is called with DioException containing 404 status code',
        () {
      final networkErrorHandler = NetworkErrorHandler();
      final exception = DioException(
        requestOptions: RequestOptions(path: 'test'),
        response: Response(
          requestOptions: RequestOptions(path: 'test'),
          statusCode: 404,
          data: {'code': '404', 'msg': 'Not Found'},
        ),
      );

      final result = networkErrorHandler.handle(exception);

      expect(result, isA<NotFoundException>());
      expect(result.errorCode, equals('404'));
      expect(result.message, equals('Not Found'));
    });

    test(
        'should handle ServerException when handle is called with DioException containing 500 status code',
        () {
      final networkErrorHandler = NetworkErrorHandler();
      final exception = DioException(
        requestOptions: RequestOptions(path: 'test'),
        response: Response(
          requestOptions: RequestOptions(path: 'test'),
          statusCode: 500,
          data: {'code': '500', 'msg': 'Internal Server Error'},
        ),
      );

      final result = networkErrorHandler.handle(exception);

      expect(result, isA<ServerException>());
      expect(result.errorCode, equals('500'));
      expect(result.message, equals('Internal Server Error'));
    });
  });
}
