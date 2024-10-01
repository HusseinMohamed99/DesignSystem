part of './../../helpers/export_manager/export_manager.dart';

ThemeData buildLightTheme(BuildContext context) {
  const primaryColor = Colors.lightBlue;
  const backgroundColor = Colors.white60;

  return ThemeData(
    useMaterial3: true,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: _buildAppBarTheme(),
    textTheme: _buildTextTheme(context),
    inputDecorationTheme: _buildInputDecorationTheme(context),
    iconTheme: const IconThemeData(color: Colors.blueGrey),
    bottomNavigationBarTheme: _buildBottomNavBarTheme(context),
    colorScheme: _buildColorScheme(),
  );
}

// Modularized AppBar Theme
AppBarTheme _buildAppBarTheme() {
  return const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white60,
      systemNavigationBarColor: Colors.white60,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}

// Modularized TextTheme
TextTheme _buildTextTheme(BuildContext context) {
  final baseTextTheme = Theme.of(context).textTheme;
  return baseTextTheme.copyWith(
    headlineLarge: baseTextTheme.headlineLarge?.copyWith(color: Colors.black),
    headlineMedium: baseTextTheme.headlineMedium?.copyWith(color: Colors.black),
    headlineSmall: baseTextTheme.headlineSmall?.copyWith(color: Colors.black),
    titleLarge: baseTextTheme.titleLarge?.copyWith(color: Colors.black),
    titleMedium: baseTextTheme.titleMedium?.copyWith(color: Colors.black),
    titleSmall: baseTextTheme.titleSmall?.copyWith(color: Colors.black),
    labelLarge: baseTextTheme.labelLarge?.copyWith(color: Colors.grey),
    labelMedium: baseTextTheme.labelMedium?.copyWith(color: Colors.black),
    labelSmall: baseTextTheme.labelSmall?.copyWith(color: Colors.black),
    bodyLarge: baseTextTheme.bodyLarge?.copyWith(color: Colors.black),
  );
}

// Modularized InputDecorationTheme
InputDecorationTheme _buildInputDecorationTheme(BuildContext context) {
  return InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    contentPadding: EdgeInsets.symmetric(
      vertical: PaddingHelper.p16.h,
      horizontal: PaddingHelper.p16.w,
    ),
    hintStyle: StyleManager.labelLarge(context).copyWith(color: Colors.green),
    labelStyle: StyleManager.labelLarge(context).copyWith(color: Colors.red),
    errorMaxLines: 2,
    errorStyle: StyleManager.labelSmall(context).copyWith(color: Colors.red),
    prefixIconColor: Colors.green,
    suffixIconColor: Colors.green,
    isCollapsed: true,
    isDense: true,
    border: _buildOutlineInputBorder(Colors.white),
    enabledBorder: _buildOutlineInputBorder(Colors.white),
    focusedBorder: _buildOutlineInputBorder(Colors.white),
    errorBorder: _buildOutlineInputBorder(Colors.red),
    focusedErrorBorder: _buildOutlineInputBorder(Colors.red),
  );
}

// Helper for OutlineInputBorder
OutlineInputBorder _buildOutlineInputBorder(Color borderColor) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(SizeHelper.s16),
    borderSide: BorderSide(color: borderColor, width: SizeHelper.s1),
  );
}

// Modularized BottomNavigationBarTheme
BottomNavigationBarThemeData _buildBottomNavBarTheme(BuildContext context) {
  return BottomNavigationBarThemeData(
    elevation: 0,
    showSelectedLabels: true,
    showUnselectedLabels: false,
    selectedItemColor: Colors.lightBlue,
    unselectedItemColor: Colors.grey,
    selectedLabelStyle: StyleManager.labelSmall(context),
    type: BottomNavigationBarType.shifting,
    selectedIconTheme: IconThemeData(size: 26.sp, color: Colors.lightBlue),
    unselectedIconTheme: IconThemeData(size: 24.sp, color: Colors.grey),
  );
}

// Modularized ColorScheme
ColorScheme _buildColorScheme() {
  return const ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.lightBlue,
    surfaceTint: Colors.white,
    onPrimary: Colors.blueGrey,
    secondary: Colors.black38,
    onSecondary: Colors.blueGrey,
    error: Colors.red,
    onError: Colors.red,
    surface: Colors.white,
    tertiary: Colors.black,
    onSurface: Colors.blueGrey,
    primaryContainer: Colors.green,
    onPrimaryContainer: Colors.lightBlue,
    onTertiaryContainer: Colors.white,
    tertiaryContainer: Colors.lightBlue,
    scrim: Colors.black38,
    inverseSurface: Colors.grey,
    onInverseSurface: Colors.black,
    outline: Colors.green,
    outlineVariant: Colors.blueGrey,
  );
}
