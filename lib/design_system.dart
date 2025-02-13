import 'package:design_system/core/helpers/constants/keys.dart';
import 'package:design_system/core/routing/app_router.dart';
import 'package:design_system/core/routing/routes.dart';
import 'package:design_system/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DesignSystem extends StatelessWidget {
  const DesignSystem({super.key, required this.appRouter});
final AppRouters appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: MaterialApp(
            builder: (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
            ),
            locale: const Locale('ar'),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            onGenerateRoute: appRouter.generateRoute,
            title: 'Design System',
            initialRoute: getInitialRoute(),
          ),
        );
      },
    );
  }

  String getInitialRoute() {
    return isOnBoardingView
        ? (isLoggedInUser ? 'Routes.mainView' : 'Routes.loginView')
        : Routes.onBoardingView;
  }
}
