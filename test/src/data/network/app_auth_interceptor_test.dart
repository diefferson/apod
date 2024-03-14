import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';
import 'package:apod/src/data/network/app_auth_interceptor.dart';

import '../../mocks/data_mocks.mocks.dart';

void main() {
  group('AppAuthInterceptor', () {
    test('should add apiKey to queryParameters when onRequest is called',
        () async {
      final apiKey = 'test_api_key';
      final appAuthInterceptor = AppAuthInterceptor(apiKey);
      final requestOptions = MockRequestOptions();
      final handler = MockRequestInterceptorHandler();
      var queryParmeters = <String, dynamic>{};

      when(requestOptions.queryParameters).thenReturn(queryParmeters);

      await appAuthInterceptor.onRequest(requestOptions, handler);

      verify(requestOptions.queryParameters['api_key'] = apiKey).called(1);
    });
  });
}
