import 'package:flutter/material.dart';
import 'package:sales_org/views/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
