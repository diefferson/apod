import 'package:apod/src/app/apod_app.dart';
import 'package:flutter/material.dart';

import 'src/app/configurators/app_configurator.dart';
import 'src/app/configurators/stark_configurator.dart';

void main() {
  startApp();
}

Future startApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  final List<AppConfigurator> configurators = [
    StarkConfigurator(),
  ];

  await Future.forEach(configurators, (AppConfigurator configurator) async {
    await configurator.configure();
  });

  runApp(const ApodApp());
}
