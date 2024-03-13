import 'package:apod/src/app/environment.dart';
import 'package:apod/src/data/network/dio_client.dart';
import 'package:stark/stark.dart';

class AppInject {
  AppInject( {required this.environment, required this.cachePath,});

  final Environment environment;
  final String cachePath;


  List<Set<Bind>> binds() => [
        dataBinds(),
        domainBinds(),
        presentationBinds(),
      ];

  Set<Bind> dataBinds() => {
        single((i) => environment),
        single((i) => DioClient.getCacheOptions(cachePath)),
        single((i) => DioClient.getClient(environment: environment, cachePath:cachePath)),
  };

  Set<Bind> domainBinds() => <Bind>{};

  Set<Bind> presentationBinds() => {};
}
