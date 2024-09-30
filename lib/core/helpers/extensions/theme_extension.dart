part of './../export_manager/export_manager.dart';

extension GetAppTheme on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension DarkMode on BuildContext {
  bool get isDarkMode {
    return Theme.of(this).brightness == Brightness.dark;
  }
}

extension LightMode on BuildContext {
  bool get isLightMode {
    return Theme.of(this).brightness == Brightness.light;
  }
}
