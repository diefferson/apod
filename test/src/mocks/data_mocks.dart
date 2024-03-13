import 'package:apod/src/data/network/app_auth_interceptor.dart';
import 'package:apod/src/data/network/app_cache_interceptor.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([
  MockSpec<AppAuthInterceptor>(),
  MockSpec<AppCacheInterceptor>(),
])
void main() {}
