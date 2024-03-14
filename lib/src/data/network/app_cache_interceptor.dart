import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

const cacheControlHeader = 'cache-control';

class AppCacheInterceptor extends DioCacheInterceptor {
  AppCacheInterceptor({required this.options}) : super(options: options);

  final CacheOptions options;

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final cacheOptions = _getCacheOptions(response.requestOptions);

    final headers = response.headers;
    if (cacheOptions.policy != CachePolicy.noCache &&
        cacheOptions.policy != CachePolicy.refresh) {
      final newHeaders = headers
        ..add(cacheControlHeader,
            'public, max-age=${cacheOptions.maxStale?.inSeconds ?? 604800}');
      response.headers = newHeaders;
    }

    super.onResponse(response, handler);
  }

  /// Gets cache options from given [request]
  /// or defaults to interceptor options.
  CacheOptions _getCacheOptions(RequestOptions request) {
    return CacheOptions.fromExtra(request) ?? options;
  }
}
