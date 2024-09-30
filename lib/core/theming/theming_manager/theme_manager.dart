part of './../../helpers/export_manager/export_manager.dart';

ThemeData buildLightTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    primaryColor: Colors.lightBlue,

    scaffoldBackgroundColor: Colors.white60,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white60,
        systemNavigationBarColor: Colors.white60,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    primarySwatch: Colors.amber,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.lightBlue,
      selectionColor: Colors.lightBlue,
      selectionHandleColor: Colors.lightBlue,
    ),
    cardColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.blueGrey),
    colorScheme: const ColorScheme(
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
    ),
    //Text Theme
    textTheme: TextTheme(
      headlineLarge: StyleManager.headlineLarge(context).copyWith(
        color: Colors.black,
      ),
      headlineMedium: StyleManager.headlineMedium(context).copyWith(
        color: Colors.black,
      ),
      headlineSmall: StyleManager.headlineSmall(context).copyWith(
        color: Colors.black,
      ),
      titleLarge: StyleManager.titleLarge(context).copyWith(
        color: Colors.black,
      ),
      titleMedium: StyleManager.titleMedium(context).copyWith(
        color: Colors.black,
      ),
      titleSmall: StyleManager.titleSmall(context).copyWith(
        color: Colors.black,
      ),
      labelLarge: StyleManager.labelLarge(context).copyWith(
        color: Colors.grey,
      ),
      labelMedium: StyleManager.labeMedium(context).copyWith(
        color: Colors.black,
      ),
      labelSmall: StyleManager.labelSmall(context).copyWith(
        color: Colors.black,
      ),
      bodyLarge: StyleManager.bodyLarge(context).copyWith(
        color: Colors.black,
      ),
    ),
    //Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsetsDirectional.only(
        top: PaddingHelper.p16.h,
        bottom: PaddingHelper.p16.h,
        start: PaddingHelper.p16.w,
      ),
      hintStyle: StyleManager.labelLarge(context).copyWith(
        color: Colors.green,
      ),
      labelStyle: StyleManager.labelLarge(context).copyWith(
        color: Colors.red,
      ),
      errorMaxLines: 2,
      errorStyle: StyleManager.labelSmall(context).copyWith(
        color: Colors.red,
      ),
      prefixIconColor: Colors.green,
      suffixIconColor: Colors.green,
      isCollapsed: true,
      isDense: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          SizeHelper.s16,
        ),
        borderSide: const BorderSide(
          color: Colors.white,
          width: SizeHelper.s1,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          SizeHelper.s16,
        ),
        borderSide: const BorderSide(
          color: Colors.white,
          width: SizeHelper.s1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          SizeHelper.s16,
        ),
        borderSide: const BorderSide(
          color: Colors.white,
          width: SizeHelper.s1,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
          width: SizeHelper.s1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeHelper.s16,
          ),
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: SizeHelper.s1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeHelper.s16,
          ),
        ),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: SizeHelper.s1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            SizeHelper.s16,
          ),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedItemColor: Colors.lightBlue,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: StyleManager.labelSmall(context),
      type: BottomNavigationBarType.shifting,
      selectedIconTheme: IconThemeData(
        size: 26.sp,
        color: Colors.lightBlue,
      ),
      unselectedIconTheme: IconThemeData(
        size: 24.sp,
        color: Colors.grey,
      ),
    ),
  );
}
