import 'package:docdoc/features/auth/login/screens/login_screen.dart';
import 'package:docdoc/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class MyRouter {
  static Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    switch(settings.name)
    {
      case Routes.onBoardingScreen :
        return MaterialPageRoute(
            builder: (_) => const OnboardingScreen()
        );
      case Routes.loginScreen :
        return MaterialPageRoute(
            builder: (_) => const LoginScreen()
        );
      default :
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                "No route defined for ${settings.name}",
              ),
            ),
          ),
        );
    }
  }
}