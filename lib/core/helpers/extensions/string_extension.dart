part of './../export_manager/export_manager.dart';

extension StringExtension on String {
  /// Localizations

  // String translate({BuildContext? context}) {
  //   return AppLocalizations.of(context!)!.translate(this);
  // }

  /// Check is String is English

  bool startWithEnglishLetter() {
    if (isEmpty) {
      return false;
    }
    int firstCodeUnit = codeUnitAt(0);

    // Check if the first character is an English uppercase letter
    return (firstCodeUnit >= 65 && firstCodeUnit <= 90) ||
        (firstCodeUnit >= 97 && firstCodeUnit <= 122);
  }

  /// Check if The String is a valid URL

  bool isValidURL() {
    final RegExp urlRegex = RegExp(
      r'^(https?:\/\/)?([a-zA-Z0-9.-]+)(:[0-9]+)?(\/.*)?$',
    );
    return urlRegex.hasMatch(this);
  }

  /// Capitalize the first letter of the String

  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this;
    }
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
