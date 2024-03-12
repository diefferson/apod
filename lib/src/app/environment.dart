import 'dart:convert';

import 'package:apod/src/app/app_flavor.dart';
import 'package:flutter/services.dart';

class Environment {
  static Environment? instance;

  Environment._({
    required this.flavor,
    required this.baseUrl,
    required this.apiKey,
  });

  final AppEnv flavor;
  final String baseUrl;
  final String apiKey;

  static Future<Environment> initialize({required AppEnv env}) async {
    if (instance == null) {
      final configs = await _getConfigs(env);

      instance = Environment._(
        flavor: env,
        baseUrl: configs['base_url'],
        apiKey: configs['api_key'],
      );
    }

    return instance!;
  }

  static Future<Map<String, dynamic>> _getConfigs(AppEnv env) async {
    if (env == AppEnv.dev) {
      return jsonDecode(await rootBundle.loadString(
        'assets/configs/environment_dev.json',
      ));
    } else {
      return jsonDecode(await rootBundle.loadString(
        'assets/configs/environment.json',
      ));
    }
  }
}
