import 'package:apod/res/app_colors.dart';
import 'package:apod/res/app_strings.dart';
import 'package:apod/res/app_theme.dart';
import 'package:apod/src/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class ApodApp extends StatelessWidget {
  const ApodApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.of(context).appName,
      localizationsDelegates: AppStrings.localizationsDelegates,
      supportedLocales: AppStrings.supportedLocales,
      theme: AppTheme(AppColors.fromBrightness(Brightness.light)).light,
      darkTheme: AppTheme(AppColors.fromBrightness(Brightness.dark)).dark,
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
