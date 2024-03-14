import 'package:apod/src/app/environment.dart';
import 'package:apod/src/data/network/app_auth_interceptor.dart';
import 'package:apod/src/data/network/app_cache_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

abstract class DioClient {
  // UUID helper to mark requests

  static const _logRequests = kDebugMode;

  static Dio getClient({
    required Environment environment,
    required String cachePath,
  }) {
    List<Interceptor> interceptorsList = [
      AppAuthInterceptor(environment.apiKey),
      AppCacheInterceptor(options: getCacheOptions(cachePath)),
      _getLogInterceptor(),
    ];

    final dio = Dio(_dioOptions(environment.baseUrl));

    for (var interceptor in interceptorsList) {
      dio.interceptors.add(interceptor);
    }

    return dio;
  }

  static BaseOptions _dioOptions(String baseUrl) => BaseOptions(
        baseUrl: baseUrl,
        followRedirects: false,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(seconds: 240),
        receiveTimeout: const Duration(seconds: 240),
      );

  static CacheOptions getCacheOptions(String cachePath) {
    return CacheOptions(
      store: HiveCacheStore(cachePath),
      policy: CachePolicy.forceCache,
      hitCacheOnErrorExcept: [401, 403, 500],
      maxStale: const Duration(days: 2),
      priority: CachePriority.normal,
      cipher: null,
      keyBuilder: getCacheKeyBuilder,
      allowPostMethod: false,
    );
  }

  static String getCacheKeyBuilder(RequestOptions request, {String name = ''}) {
    return const Uuid()
        .v5(Uuid.NAMESPACE_URL, '${request.uri.toString()}/$name');
  }

  static Interceptor _getLogInterceptor() {
    return LogInterceptor(
      request: _logRequests,
      requestHeader: _logRequests,
      requestBody: _logRequests,
      responseHeader: _logRequests,
      responseBody: _logRequests,
      error: _logRequests,
      logPrint: _logPrint,
    );
  }

  static void _logPrint(dynamic message) {
    if (kDebugMode) {
      print(message?.toString());
    }
  }
}
