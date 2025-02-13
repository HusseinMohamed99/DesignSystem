import 'package:design_system/core/helpers/enum/language_type.dart';
import 'package:design_system/core/helpers/functions/app_localizations.dart';
import 'package:flutter/material.dart';

const String arabic = 'ar';
const String english = 'en';
const String assetPathLocal = 'assets/translations';

const Locale arabicLocal = Locale('ar', 'SA');
const Locale englishLocal = Locale('en', 'US');

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return english;
      case LanguageType.arabic:
        return arabic;
    }
  }
}

extension TranslateX on String {
  String tr(BuildContext context) {
    return AppLocalizations.of(context)!.translate(this);
  }
}
