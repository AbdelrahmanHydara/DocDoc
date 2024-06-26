import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/features/auth/login/cubit/login_cubit.dart';
import 'package:docdoc/features/auth/login/screens/login_screen.dart';
import 'package:docdoc/features/auth/register/screens/register_screen.dart';
import 'package:docdoc/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt<LoginCubit>(),
                child: const LoginScreen())
        );
      case Routes.registerScreen :
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (BuildContext context) => getIt<LoginCubit>(),
                child: const RegisterScreen())
        );
    }
    return null;
  }
}