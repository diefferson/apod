import 'package:apod/src/data/network/app_auth_interceptor.dart';
import 'package:apod/src/data/network/app_cache_interceptor.dart';
import 'package:apod/src/data/network/dio_client.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/app_mocks.mocks.dart';

void main() {
  group('DioClient', () {
    final mockEnvironment = MockEnvironment();

    setUp(() {
      when(mockEnvironment.apiKey).thenReturn('test_api_key');
      when(mockEnvironment.baseUrl).thenReturn('https://test.com');
    });

    test('should create Dio with correct interceptors', () {
      final dio = DioClient.getClient(
        environment: mockEnvironment,
        cachePath: 'test_cache_path',
      );

      expect(dio.interceptors.any((i) => i is AppAuthInterceptor), isTrue);
      expect(dio.interceptors.any((i) => i is AppCacheInterceptor), isTrue);
    });

    test('should create Dio with correct options', () {
      final dio = DioClient.getClient(
        environment: mockEnvironment,
        cachePath: 'test_cache_path',
      );
      expect(dio.options.baseUrl, equals('https://test.com'));
      expect(dio.options.followRedirects, isFalse);
      expect(dio.options.receiveDataWhenStatusError, isTrue);
      expect(dio.options.connectTimeout, equals(const Duration(seconds: 240)));
      expect(dio.options.receiveTimeout, equals(const Duration(seconds: 240)));
    });

    test('should create CacheOptions with correct options', () {
      final cacheOptions = DioClient.getCacheOptions('test_cache_path');

      expect(cacheOptions.policy, equals(CachePolicy.forceCache));
      expect(cacheOptions.hitCacheOnErrorExcept, equals([401, 403, 500]));
      expect(cacheOptions.maxStale, equals(const Duration(days: 2)));
      expect(cacheOptions.priority, equals(CachePriority.normal));
      expect(cacheOptions.allowPostMethod, isFalse);
    });
  });
}
