import 'package:flutter/material.dart';

import 'app_colors_light.dart';

class AppColorsDark extends AppColorsLight {
  //Primary
  @override
  Color get primary => const Color(0xFFFFFFFF);

  @override
  Color get onPrimary => const Color(0xFF000000);

  @override
  Color get primaryContainer => const Color(0xFFFFFFFF);

  @override
  Color get onPrimaryContainer => const Color(0xFF000000);

  //Secondary
  @override
  Color get secondary => const Color(0x29FFFFFF);

  @override
  Color get onSecondary => const Color(0xFFFFFFFF);

  @override
  Color get secondaryContainer => const Color(0x29FFFFFF);

  @override
  Color get onSecondaryContainer => const Color(0xFFFFFFFF);

  //Tertiary
  @override
  Color get tertiary => const Color(0x52FFFFFF);

  @override
  Color get onTertiary => const Color(0xFF000000);

  @override
  Color get tertiaryContainer => const Color(0x52FFFFFF);

  @override
  Color get onTertiaryContainer => const Color(0xFF000000);

  //Error
  @override
  Color get error => const Color(0xFFCC3C21);

  @override
  Color get onError => const Color(0xFFFFFFFF);

  @override
  Color get errorContainer => const Color(0x52CC3C21);

  @override
  Color get onErrorContainer => const Color(0xFFCC3C21);

  //Background
  @override
  Color get background => const Color(0xFF0C1D4D);

  @override
  Color get onBackground => const Color(0xFFFFFFFF);

  @override
  Color get surface => const Color(0xFF0C1D4D);

  @override
  Color get onSurface => const Color(0xFFFFFFFF);

  //Surface variant
  @override
  Color get surfaceVariant => const Color(0x03000000);

  @override
  Color get onSurfaceVariant => const Color(0xFFFFFFFF);

  @override
  Color get outline => const Color(0x29FFFFFF);

  @override
  Color get outlineVariant => const Color(0x7AFFFFFF);
}
