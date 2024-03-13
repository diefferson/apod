import 'dart:async';
import 'package:dio/dio.dart';

class AppAuthInterceptor extends Interceptor {
  AppAuthInterceptor(this._apiKey);

  final String _apiKey;
  static const apiKey = 'api_key';
  static const contentType = 'content-type';

  static String? authenticationToken;

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.queryParameters[apiKey] = _apiKey;
    return super.onRequest(options, handler);
  }
}
