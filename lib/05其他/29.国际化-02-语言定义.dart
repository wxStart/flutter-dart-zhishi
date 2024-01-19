import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomLocalizations {
  final Locale locale;

  CustomLocalizations(this.locale);

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      "title": 'home',
      "greet": 'Hello',
    },
    'zh': {
      "title": '首页',
      "greet": '你好',
    }
  };

  static List<String> languages() => _localizedValues.keys.toList();

  String t(
    String key,
  ) {
    return _localizedValues[locale.languageCode]![key]!;
  }

  static CustomLocalizationsDelegate delegate = CustomLocalizationsDelegate();
}

class CustomLocalizationsDelegate
    extends LocalizationsDelegate<CustomLocalizations> {
  @override
  bool isSupported(Locale locale) =>
      CustomLocalizations.languages().contains(locale.languageCode);

  @override
  Future<CustomLocalizations> load(Locale locale) {
    return SynchronousFuture<CustomLocalizations>(CustomLocalizations(locale));
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<CustomLocalizations> old) {
    // 不需要频繁更新
    return false;
  }
}
