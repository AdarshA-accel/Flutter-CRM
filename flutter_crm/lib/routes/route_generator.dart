import 'package:flutter/material.dart';
import 'package:flutter_crm/routes/app_routes.dart';
import 'package:flutter_crm/screens/auth/login_screen.dart';
import 'package:flutter_crm/screens/dashboard/home_screen.dart';
import 'package:flutter_crm/screens/splash/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
// This file is responsible for generating routes in the Flutter CRM application.
// It uses the RouteGenerator class to map route names to their respective screens.