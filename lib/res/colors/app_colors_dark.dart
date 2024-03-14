import 'package:flutter/material.dart';

import 'app_colors_light.dart';

class AppColorsDark extends AppColorsLight {
  //Primary
  @override
  Color get primary => const Color(0xFF04C8E8);
  @override
  Color get onPrimary => const Color(0xFFFFFFFF);
  @override
  Color get primaryContainer => const Color(0xFF0A0A0A);
  @override
  Color get onPrimaryContainer => const Color(0xFFFFFFFF);

  //Secondary
  @override
  Color get secondary => const Color(0xFF1F1F1F);
  @override
  Color get onSecondary => const Color(0xFFFFFFFF);
  @override
  Color get secondaryContainer => const Color(0xFF1F1F1F);
  @override
  Color get onSecondaryContainer => const Color(0xFFFFFFFF);

  //Tertiary
  @override
  Color get tertiary => const Color(0xFF303030);
  @override
  Color get onTertiary => const Color(0xFFFFFFFF);
  @override
  Color get tertiaryContainer => const Color(0xFF303030);
  @override
  Color get onTertiaryContainer => const Color(0xFFFFFFFF);

  //Error
  @override
  Color get error => const Color(0xFFB71C1C);
  @override
  Color get onError => const Color(0xFFFFFFFF);
  @override
  Color get errorContainer => const Color(0xFFB71C1C);
  @override
  Color get onErrorContainer => const Color(0xFFFFFFFF);

  //Background
  @override
  Color get background => const Color(0xFF121212);
  @override
  Color get onBackground => const Color(0xFFFFFFFF);
  @override
  Color get surface => const Color(0xFF121212);
  @override
  Color get onSurface => const Color(0xFFFFFFFF);

  //Surface variant
  @override
  Color get surfaceVariant => const Color(0xFF1F1F1F);
  @override
  Color get onSurfaceVariant => const Color(0xFFFFFFFF);
  @override
  Color get outline => const Color(0xFF303030);
  @override
  Color get outlineVariant => const Color(0xFF303030);
}
