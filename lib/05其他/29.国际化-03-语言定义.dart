import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class CustomLocalizations {
  final Locale locale;

  CustomLocalizations(this.locale);

  late Map<String, String> _localizedValues;

  Future<bool> loadJson() async {
    print('locale.languageCode: ${locale.languageCode}');
    String jsonString =
        await rootBundle.loadString('lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedValues = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
    return true;
  }

  static List<String> languages() => ['en', 'zh'];

  String t(String key, [String defaultValue = '']) {
    return _localizedValues[key] ?? defaultValue!;
  }

  static CustomLocalizationsDelegate delegate = CustomLocalizationsDelegate();
}

class CustomLocalizationsDelegate
    extends LocalizationsDelegate<CustomLocalizations> {
  @override
  bool isSupported(Locale locale) =>
      CustomLocalizations.languages().contains(locale.languageCode);

  @override
  Future<CustomLocalizations> load(Locale locale) async {
    // return SynchronousFuture<CustomLocalizations>(CustomLocalizations(locale));
    CustomLocalizations localizations = CustomLocalizations(locale);
    await localizations.loadJson();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<CustomLocalizations> old) {
    // 不需要频繁更新
    return false;
  }
}
