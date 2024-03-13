import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:apod/src/data/network/app_cache_interceptor.dart';

import '../../mocks/data_mocks.mocks.dart';

void main() {
  group('AppCacheInterceptor', () {
    test('should add cache-control to headers when onResponse is called',
        () async {
      final cacheOptions = CacheOptions(
        policy: CachePolicy.request,
        store: MockCacheStore(),
      );
      final appCacheInterceptor = AppCacheInterceptor(options: cacheOptions);
      final requestOptions = MockRequestOptions();
      final handler = MockResponseInterceptorHandler();
      final response = Response(requestOptions: requestOptions);

      response.headers = Headers();
      when(requestOptions.extra).thenReturn({});


      appCacheInterceptor.onResponse(response, handler);
      final headers = response.headers;

      expect(headers[cacheControlHeader], isNotNull);
      expect(headers[cacheControlHeader]?.first, contains('public, max-age='));
    });
  });
}
