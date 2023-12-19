import 'package:docdoc/core/di/dependecy_injection.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/home/ui/screen/home_creen.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/screens/login_screen.dart';
import 'package:docdoc/features/on_boarding/ui/screens/on_boarging_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// * how to route defferent pages*
// *

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final argument = settings.arguments;

    switch (settings.name) {
      case Routes.onBordingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route define in ${settings.name}'),
            ),
          ),
        );
    }
  }
}
