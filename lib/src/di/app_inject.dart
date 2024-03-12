import 'package:apod/src/app/environment.dart';
import 'package:stark/stark.dart';

class AppInject {
  AppInject({required this.environment});

  final Environment environment;

  List<Set<Bind>> binds() => [
        dataBinds(),
        domainBinds(),
        presentationBinds(),
      ];

  Set<Bind> dataBinds() => {
        single((i) => environment),
      };

  Set<Bind> domainBinds() => <Bind>{};

  Set<Bind> presentationBinds() => {};
}
