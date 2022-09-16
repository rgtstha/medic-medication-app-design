import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:medic_medication_app/screens/login_signup_screen/login_sign_up_screen.dart';

import '../screens/onboarding/onboarding_screen.dart';
import '../screens/splash/splash_screen.dart';

class RouteGenerator {
  const RouteGenerator._();

  static const String splashScreen = '/';
  static const String onboardingScreen = '/onboarding';
  static const String loginSignUpScreen = 'login_signup';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    log("Settings ${settings.name}");
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case loginSignUpScreen:
        return MaterialPageRoute(builder: (_) => const LoginSignUpScreen());

      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }

  static List<Route> generateInitialRoutes(String value) {
    return [MaterialPageRoute(builder: (_) => const SplashScreen())];
  }
}
