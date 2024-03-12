import 'package:apod/src/app/apod_app.dart';
import 'package:apod/src/app/app_flavor.dart';
import 'package:flutter/material.dart';

import 'src/app/configurators/app_configurator.dart';
import 'src/app/configurators/stark_configurator.dart';

Future startApp({required AppEnv env}) async {
  WidgetsFlutterBinding.ensureInitialized();

  final List<AppConfigurator> configurators = [
    StarkConfigurator(env),
  ];

  await Future.forEach(configurators, (AppConfigurator configurator) async {
    await configurator.configure();
  });

  runApp(const ApodApp());
}
