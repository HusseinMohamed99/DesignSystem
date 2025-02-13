import 'package:design_system/core/routing/routes.dart';
import 'package:design_system/features/onboarding/presentation/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouters {
  Route? generateRoute(RouteSettings settings) {
// This arguments to be passed in any screen like this (arguments as ClassName)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
    }
    return null;
  }
}
