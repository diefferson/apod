import 'package:apod/src/data/api/apod_api.dart';
import 'package:apod/src/data/apod_repository.dart';
import 'package:apod/src/data/network/app_auth_interceptor.dart';
import 'package:apod/src/data/network/app_cache_interceptor.dart';
import 'package:apod/src/data/network/dio_client.dart';
import 'package:apod/src/data/network/network_error_handler.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<AppAuthInterceptor>(),
  MockSpec<AppCacheInterceptor>(),
  MockSpec<NetworkErrorHandler>(),
  MockSpec<DioClient>(),
  MockSpec<RequestInterceptorHandler>(),
  MockSpec<ResponseInterceptorHandler>(),
  MockSpec<RequestOptions>(),
  MockSpec<Response>(),
  MockSpec<CacheOptions>(),
  MockSpec<CacheStore>(),
  MockSpec<Dio>(),
  MockSpec<ApodApi>(),
  MockSpec<ApodRepository>(),
])
void main() {}
