import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors/app_colors_light.dart';

class AppTheme {
  AppTheme(this.appColors);

  final AppColorsLight appColors;

  static const String fontFamily = 'Roboto';

  ThemeData get light => _themeData(Brightness.light);

  ThemeData get dark => _themeData(Brightness.dark);

  ThemeData _themeData(Brightness brightness) {
    return ThemeData(
        brightness: brightness,
        scaffoldBackgroundColor: appColors.surfaceVariant,
        colorScheme: _colorScheme(brightness),
        fontFamily: fontFamily,
        textTheme: _textTheme(),
        cupertinoOverrideTheme: _cupertinoThemeData(brightness),
        iconTheme: IconThemeData(color: appColors.onSecondary));
  }

  ColorScheme _colorScheme(Brightness brightness) {
    return ColorScheme(
      brightness: brightness,
      primary: appColors.primary,
      onPrimary: appColors.onPrimary,
      primaryContainer: appColors.primaryContainer,
      onPrimaryContainer: appColors.onPrimaryContainer,
      secondary: appColors.secondary,
      onSecondary: appColors.onSecondary,
      secondaryContainer: appColors.secondaryContainer,
      onSecondaryContainer: appColors.onSecondaryContainer,
      tertiary: appColors.tertiary,
      onTertiary: appColors.onTertiary,
      tertiaryContainer: appColors.tertiaryContainer,
      onTertiaryContainer: appColors.onTertiaryContainer,
      error: appColors.error,
      onError: appColors.onError,
      errorContainer: appColors.errorContainer,
      onErrorContainer: appColors.onErrorContainer,
      background: appColors.background,
      onBackground: appColors.onBackground,
      surface: appColors.surface,
      onSurface: appColors.onSurface,
      surfaceVariant: appColors.surfaceVariant,
      onSurfaceVariant: appColors.onSurfaceVariant,
      outline: appColors.outline,
      outlineVariant: appColors.outlineVariant,
    );
  }

  CupertinoThemeData _cupertinoThemeData(Brightness brightness) =>
      CupertinoThemeData(
        brightness: brightness,
        scaffoldBackgroundColor: appColors.surfaceVariant,
        barBackgroundColor: appColors.surfaceVariant,
        primaryColor: appColors.primary,
        textTheme: CupertinoTextThemeData(
          primaryColor: appColors.primary,
          navTitleTextStyle: TextStyle(
            fontSize: 16,
            fontFamily: fontFamily,
            fontWeight: FontWeight.bold,
            color: appColors.onSurface,
          ),
        ),
      );

  TextTheme _textTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 57,
        height: 1.12,
        fontWeight: FontWeight.w600,
      ),
      displayMedium: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 45,
        height: 1.15,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 36,
        height: 1.22,
        fontWeight: FontWeight.w600,
      ),
      headlineLarge: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 32,
        height: 1.25,
        fontWeight: FontWeight.w700,
      ),
      headlineMedium: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 28,
        height: 1.28,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 24,
        height: 1.33,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 22,
        height: 1.27,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
      ),
      titleSmall: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 14,
        height: 1.42,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
      ),
      labelLarge: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 14,
        height: 1.42,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      labelMedium: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 12,
        height: 1.33,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
      labelSmall: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 11,
        height: 1.35,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
      bodyLarge: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 16,
        height: 1.5,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 14,
        height: 1.42,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontSize: 12,
        height: 1.33,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
    );
  }
}
