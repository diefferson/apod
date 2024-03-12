import 'package:apod/src/app/app_flavor.dart';
import 'package:apod/src/app/environment.dart';
import 'package:apod/src/di/app_inject.dart';
import 'package:stark/stark.dart';

import 'app_configurator.dart';

class StarkConfigurator implements AppConfigurator {
  StarkConfigurator(this.env);

  final AppEnv env;

  @override
  Future configure() async {
    Stark.clear();
    final environment = await Environment.initialize(env: env);

    final appInject = AppInject(environment: environment);

    Stark.init(
      appInject.binds(),
      logger: Logger(
        level: Level.INFO,
      ),
    );
  }
}
