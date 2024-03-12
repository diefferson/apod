import 'dart:async';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'strings/strings.dart';
import 'strings/strings_pt.dart';

class AppStrings {
  AppStrings(this.locale);

  final Locale locale;

  final Map<String, Strings> _localizedValues = {
    'en': Strings(),
    'pt': StringsPT(),
  };

  static Strings of(BuildContext context) {
    final AppStrings? strings =
        Localizations.of<AppStrings>(context, AppStrings);
    final languageCode = strings?.locale.languageCode ?? '';
    try {
      return strings!._localizedValues[languageCode]!;
    } catch (_) {
      return Strings();
    }
  }

  static Iterable<LocalizationsDelegate<dynamic>> get localizationsDelegates {
    return [
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      const AppStringsDelegate(isSupportedLocale),
    ];
  }

  static Iterable<Locale> get supportedLocales {
    return [
      const Locale('en', ''),
      const Locale('pt', ''),
    ];
  }

  static bool isSupportedLocale(Locale locale) {
    return supportedLocales.any((e) => e.languageCode == locale.languageCode);
  }
}

class AppStringsDelegate extends LocalizationsDelegate<AppStrings> {
  const AppStringsDelegate(this.isSupportedLocale);

  final bool Function(Locale) isSupportedLocale;

  @override
  bool isSupported(Locale locale) => isSupportedLocale(locale);

  @override
  Future<AppStrings> load(Locale locale) =>
      SynchronousFuture<AppStrings>(AppStrings(locale));

  @override
  bool shouldReload(AppStringsDelegate old) => false;
}
