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
  // Accessing Theme once and reusing it
  ThemeData get _theme => Theme.of(this);
  ColorScheme get _colorScheme => _theme.colorScheme;
  AppBarTheme get appBarTheme => _theme.appBarTheme;

  // General Theme Colors
  Brightness get brightness => _colorScheme.brightness;
  Color get primaryColor => _theme.primaryColor;
  Color get scaffoldBackgroundColor => _theme.scaffoldBackgroundColor;
  Color get canvasColor => _theme.canvasColor;
  Color get cardColor => _theme.cardColor;
  Color get hintColor => _theme.hintColor;
  Color get focusColor => _theme.focusColor;
  Color get hoverColor => _theme.hoverColor;
  Color get shadowColor => _theme.shadowColor;
  Color get splashColor => _theme.splashColor;
  Color get dividerColor => _theme.dividerColor;
  Color get primaryColorDark => _theme.primaryColorDark;
  Color get primaryColorLight => _theme.primaryColorLight;
  Color get disabledColor => _theme.disabledColor;
  Color get highlightColor => _theme.highlightColor;
  Color get indicatorColor => _theme.indicatorColor;
  Color get secondaryHeaderColor => _theme.secondaryHeaderColor;
  Color get dialogBackgroundColor => _theme.dialogBackgroundColor;
  Color get unselectedWidgetColor => _theme.unselectedWidgetColor;

  // Error Colors
  Color get error => _colorScheme.error;
  Color get errorContainer => _colorScheme.errorContainer;
  Color get onError => _colorScheme.onError;
  Color get onErrorContainer => _colorScheme.onErrorContainer;

  // Primary Colors
  Color get primary => _colorScheme.primary;
  Color get primaryContainer => _colorScheme.primaryContainer;
  Color get inversePrimary => _colorScheme.inversePrimary;
  Color get onPrimary => _colorScheme.onPrimary;
  Color get onPrimaryContainer => _colorScheme.onPrimaryContainer;
  Color get primaryFixed => _colorScheme.primaryFixed;
  Color get primaryFixedVariant => _colorScheme.primaryFixedDim;
  Color get onPrimaryFixed => _colorScheme.onPrimaryFixed;
  Color get onPrimaryFixedVariant => _colorScheme.onPrimaryFixedVariant;

  // Secondary Colors
  Color get secondary => _colorScheme.secondary;
  Color get secondaryContainer => _colorScheme.secondaryContainer;
  Color get onSecondary => _colorScheme.onSecondary;
  Color get onSecondaryContainer => _colorScheme.onSecondaryContainer;
  Color get secondaryFixed => _colorScheme.secondaryFixed;
  Color get secondaryFixedDim => _colorScheme.secondaryFixedDim;
  Color get onSecondaryFixed => _colorScheme.onSecondaryFixed;
  Color get onSecondaryFixedVariant => _colorScheme.onSecondaryFixedVariant;

  // Surface Colors
  Color get surface => _colorScheme.surface;
  Color get surfaceBright => _colorScheme.surfaceBright;
  Color get surfaceDim => _colorScheme.surfaceDim;
  Color get surfaceContainer => _colorScheme.surfaceContainer;
  Color get surfaceContainerHigh => _colorScheme.surfaceContainerHigh;
  Color get surfaceContainerHighest => _colorScheme.surfaceContainerHighest;
  Color get surfaceContainerLow => _colorScheme.surfaceContainerLow;
  Color get surfaceContainerLowest => _colorScheme.surfaceContainerLowest;
  Color get surfaceTint => _colorScheme.surfaceTint;
  Color get inverseSurface => _colorScheme.inverseSurface;
  Color get onSurface => _colorScheme.onSurface;
  Color get onSurfaceVariant => _colorScheme.onSurfaceVariant;
  Color get onInverseSurface => _colorScheme.onInverseSurface;

  // Tertiary Colors
  Color get tertiary => _colorScheme.tertiary;
  Color get tertiaryContainer => _colorScheme.tertiaryContainer;
  Color get onTertiary => _colorScheme.onTertiary;
  Color get onTertiaryContainer => _colorScheme.onTertiaryContainer;
  Color get tertiaryFixed => _colorScheme.tertiaryFixed;
  Color get tertiaryFixedDim => _colorScheme.tertiaryFixedDim;
  Color get onTertiaryFixed => _colorScheme.onTertiaryFixed;
  Color get onTertiaryFixedVariant => _colorScheme.onTertiaryFixedVariant;

  // Miscellaneous
  Color get outline => _colorScheme.outline;
  Color get outlineVariant => _colorScheme.outlineVariant;
  Color get scrim => _colorScheme.scrim;
  Color get shadow => _colorScheme.shadow;

// AppBar Theme
  Color? get appBarThemeBackgroundColor =>
      Theme.of(this).appBarTheme.backgroundColor;
  Color? get appBarThemeForegroundColor =>
      Theme.of(this).appBarTheme.foregroundColor;
  Color? get appBarThemeSurfaceTintColor =>
      Theme.of(this).appBarTheme.surfaceTintColor;
  Color? get appBarThemeShadowColor => Theme.of(this).appBarTheme.shadowColor;
}
