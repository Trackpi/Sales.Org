import 'package:flutter/material.dart';
import 'package:sales_org/views/bottom_navbar/bottom_navbar.dart';
import 'package:sales_org/views/company_list/company_list.dart';
import 'package:sales_org/views/company_profile/company_profile.dart';
import 'package:sales_org/views/coursedetails_screen/coursedetails_screen.dart';
import 'package:sales_org/views/faqs_screen/faq_no_saved_screen.dart';
import 'package:sales_org/views/faqs_screen/top_search_screen.dart';

import 'package:sales_org/views/login_screen/login_screen.dart';
import 'package:sales_org/views/operations_page/operation_forms_page.dart';
import 'package:sales_org/views/operations_page/socialmedia_declarationform.dart';
import 'package:sales_org/views/operations_page/socialmedia_declarationform_mainpage.dart';
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
import 'package:sales_org/views/ticket_raising_page/closedtickets_page.dart';
import 'package:sales_org/views/ticket_raising_page/openedtickets_page.dart';
import 'package:sales_org/views/ticket_raising_page/selectclient_page.dart';
import 'package:sales_org/views/ticket_raising_page/ticket_against_client.dart';
import 'package:sales_org/views/ticket_raising_page/ticket_against_trackpi.dart';
import 'package:sales_org/views/todo_list_page/todo_list_mainpage.dart';

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
  static const String courseDetails = '/CoursedetailsScreen';
  static const String operationFormPage = '/FormsPageOperations';
  static const String socialMediaMainPage =
      '/SocialmediaDeclarationformMainpage';
  static const String socialMediaSubmissionPage = '/SocialMediaDeclarationForm';
  static const String openedTicketsPage = '/OpenedticketsPage';
  static const String closedTicketsPage = '/ClosedticketsPage';
  static const String selectClientPage = '/SelectClient';
  static const String ticketAgainstClient = '/TicketAgainstClient';
  static const String ticketAgainstCompany = '/TicketAgainstTrackpi';
  static const String operationMainPageTodoList = '/TodoListMainpage';

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
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case loginScreen:
        // Return a MaterialPageRoute that loads the LoginScreen widget
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case homeScreen:
        return MaterialPageRoute(builder: (_) => const BottomNavbar());

      case companyProfile:
        return MaterialPageRoute(builder: (_) => const CompanyProfile());

      case companyList:
        return MaterialPageRoute(builder: (_) => const CompanyList());

      case products:
        return MaterialPageRoute(builder: (_) => const Products());

      case productsProfile:
        return MaterialPageRoute(builder: (_) => const ProductsProfile());

      case promotionPhotos:
        return MaterialPageRoute(builder: (_) => const PromotionPhotoVideo());

      case testimonials:
        return MaterialPageRoute(builder: (_) => const TestimonialsScreen());

      case posters:
        return MaterialPageRoute(builder: (_) => const Posters());

      case homeSearch:
        return MaterialPageRoute(builder: (_) => const Search());

      case faqSearch:
        return MaterialPageRoute(builder: (_) => const TopSearchScreen());

      case faqSaved:
        return MaterialPageRoute(builder: (_) => const FaqNoSavedScreen());

      case profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      case documents:
        return MaterialPageRoute(builder: (_) => const ProfileDocumentScreen());

      case personalInfo:
        return MaterialPageRoute(
            builder: (_) => const ProfilePersonalInfoscreen());

      case teamDetails:
        return MaterialPageRoute(builder: (_) => const TeamDetails());

      case passKey:
        return MaterialPageRoute(builder: (_) => const PasskeyScreen());

      case resignationScreen:
        return MaterialPageRoute(builder: (_) => const ResignationformScreen());

      case courseDetails:
        return MaterialPageRoute(builder: (_) => const CoursedetailsScreen());

      case operationFormPage:
        return MaterialPageRoute(builder: (_) => const FormsPageOperations());

      case socialMediaMainPage:
        return MaterialPageRoute(
            builder: (_) => const SocialmediaDeclarationformMainpage());

      case socialMediaSubmissionPage:
        return MaterialPageRoute(
            builder: (_) => const SocialMediaDeclarationForm());

      case openedTicketsPage:
        return MaterialPageRoute(builder: (_) => const OpenedticketsPage());

      case closedTicketsPage:
        return MaterialPageRoute(builder: (_) => const ClosedticketsPage());

      case ticketAgainstClient:
        return MaterialPageRoute(builder: (_) => const TicketAgainstClient());

      case ticketAgainstCompany:
        return MaterialPageRoute(builder: (_) => const TicketAgainstTrackpi());

      case selectClientPage:
        return MaterialPageRoute(builder: (_) => const SelectClient());

      case operationMainPageTodoList:
        return MaterialPageRoute(builder: (_) => const TodoListMainpage());

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
