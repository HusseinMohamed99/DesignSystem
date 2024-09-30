part of './../export_manager/export_manager.dart';

extension HexColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

extension ColorExtension on BuildContext {
  Color get scaffoldBackgroundColor => Theme.of(this).scaffoldBackgroundColor;
  Color get primaryColor => Theme.of(this).primaryColor;
  Brightness get colorSchemeBrightness => Theme.of(this).colorScheme.brightness;
}
