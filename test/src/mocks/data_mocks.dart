import 'package:apod/src/data/network/app_auth_interceptor.dart';
import 'package:apod/src/data/network/app_cache_interceptor.dart';
import 'package:apod/src/data/network/dio_client.dart';
import 'package:apod/src/data/network/network_error_handler.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<AppAuthInterceptor>(),
  MockSpec<AppCacheInterceptor>(),
  MockSpec<NetworkErrorHandler>(),
  MockSpec<DioClient>(),
  MockSpec<RequestInterceptorHandler>(),
  MockSpec<RequestOptions>(),
])
void main() {}
