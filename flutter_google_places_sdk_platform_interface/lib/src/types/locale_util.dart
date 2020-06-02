import 'package:flutter/material.dart';

class LocaleUtil {
  static Map<String, String> toMap(Locale locale) => {
        'country': locale.countryCode,
        'language': locale.languageCode,
      };
}
