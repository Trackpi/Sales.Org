import 'package:flutter/material.dart';
import 'package:sales_org/views/bottom_navbar/bottom_navbar.dart';
import 'package:sales_org/views/company_list/company_list.dart';
import 'package:sales_org/views/company_profile/company_profile.dart';
import 'package:sales_org/views/faqs_screen/faq_no_saved_screen.dart';
import 'package:sales_org/views/faqs_screen/top_search_screen.dart';
import 'package:sales_org/views/home_screen/home_screen.dart';
import 'package:sales_org/views/login_screen/login_screen.dart';
import 'package:sales_org/views/posters/posters.dart';
import 'package:sales_org/views/products/products.dart';
import 'package:sales_org/views/products/products_profile.dart';
import 'package:sales_org/views/profile_screens/passkey_screen.dart';
import 'package:sales_org/views/profile_screens/profile_document_screen.dart';
import 'package:sales_org/views/profile_screens/profile_personal_infoscreen.dart';
import 'package:sales_org/views/profile_screens/profile_screen.dart';
import 'package:sales_org/views/profile_screens/resignationform_screen.dart';
import 'package:sales_org/views/profile_screens/team_details.dart';
import 'package:sales_org/views/promotion_photo_video/promotion_photo_video.dart';
import 'package:sales_org/views/search/search.dart';
import 'package:sales_org/views/splash_screen/splash_screen.dart';
import 'package:sales_org/views/testimonials/testimonials.dart';

/// This class manages the routes for the application.
/// It provides static constants for route names and a method to generate routes.
class AppRoutes {
  /// The route name for the splash screen.
  static const String splashScreen = '/';
  static const String loginScreen = '/LoginScreen';
  static const String companyProfile = '/CompanyProfile';
  static const String companyList = '/CompanyList';
  static const String homeScreen = '/HomeScreen';
  static const String products = '/Products';
  static const String productsProfile = '/ProductsProfile';
  static const String promotionPhotos = '/PromotionPhotoVideo';
  static const String testimonials = '/TestimonialsScreen';
  static const String posters = '/Posters';
  static const String homeSearch = '/Search';
  static const String faqSearch = '/TopSearchScreen';
  static const String faqSaved = '/FaqNoSavedScreen';
  static const String profileScreen = '/ProfileScreen';
  static const String documents = '/ProfileDocumentScreen';
  static const String personalInfo = '/ProfilePersonalInfoscreen';
  static const String teamDetails = '/TeamDetails';
  static const String passKey = '/PasskeyScreen';
  static const String resignationScreen = '/ResignationformScreen';

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

      case products:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const Products());

      case productsProfile:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const ProductsProfile());

      case promotionPhotos:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const PromotionPhotoVideo());

      case testimonials:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const TestimonialsScreen());

      case posters:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const Posters());

      case homeSearch:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const Search());

      case faqSearch:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const TopSearchScreen());

      case faqSaved:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const FaqNoSavedScreen());

      case profileScreen:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      case documents:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const ProfileDocumentScreen());

      case personalInfo:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(
            builder: (_) => const ProfilePersonalInfoscreen());

      case teamDetails:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const TeamDetails());

      case passKey:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const PasskeyScreen());

      case resignationScreen:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const ResignationformScreen());

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
