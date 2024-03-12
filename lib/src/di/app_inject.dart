import 'package:stark/stark.dart';

class AppInject {
  List<Set<Bind>> binds() => [
        dataBinds(),
        domainBinds(),
        presentationBinds(),
      ];

  Set<Bind> dataBinds() => {};

  Set<Bind> domainBinds() => <Bind>{};

  Set<Bind> presentationBinds() => {};
}
