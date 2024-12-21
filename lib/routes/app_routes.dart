import 'package:flutter/material.dart';
import 'package:sales_org/views/bottom_navbar/bottom_navbar.dart';
import 'package:sales_org/views/company_list/company_list.dart';
import 'package:sales_org/views/company_profile/company_profile.dart';
import 'package:sales_org/views/home_screen/home_screen.dart';
import 'package:sales_org/views/login_screen/login_screen.dart';
import 'package:sales_org/views/splash_screen/splash_screen.dart';

/// This class manages the routes for the application.
/// It provides static constants for route names and a method to generate routes.
class AppRoutes {
  /// The route name for the splash screen.
  static const String splashScreen = '/';
  static const String loginScreen = '/LoginScreen';
  static const String companyProfile = '/CompanyProfile';
  static const String companyList = '/CompanyList';
  static const String homeScreen = '/HomeScreen';

  /// Generates the appropriate route based on the given [settings].
  ///
  /// The method uses a switch statement to determine which route to create
  /// based on the [settings.name]. If the route name matches one of the defined
  /// routes, it returns a [MaterialPageRoute] for the corresponding widget.
  /// If the route name is not recognized, it returns a default route with a message.
  ///
  /// [settings] - The settings object that contains the name of the route.
  ///
  /// Returns a [Route] object that contains the desired widget.
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Case for splash screen route
      case splashScreen:
        // Return a MaterialPageRoute that loads the SplashScreen widget
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case loginScreen:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case homeScreen:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const BottomNavbar());

      case companyProfile:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const CompanyProfile());

      case companyList:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const CompanyList());

      // Default case when no matching route is found
      default:
        // Return a MaterialPageRoute with a Scaffold displaying an error message
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                  child: Text('No route defined for ${settings.name}'),
                )));
    }
  }
}
