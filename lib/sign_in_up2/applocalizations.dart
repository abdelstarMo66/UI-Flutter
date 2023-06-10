import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale? locale;

  AppLocalizations(this.locale);

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationDelegate();

  static AppLocalizations? of(context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  late Map<String, String> _localizedString;

  Future loadJsonLang() async {
    String jsonString = await rootBundle
        .loadString("lib/sign_in_up2/lang/${locale!.languageCode}.json");

    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedString = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String translate(String key) => _localizedString[key] ?? "";
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {

  @override
  bool isSupported(Locale locale) {
    return ["en", "ar", "de"].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale);
    await localizations.loadJsonLang();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;

  const _AppLocalizationDelegate();
}
