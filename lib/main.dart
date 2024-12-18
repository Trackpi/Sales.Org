import 'package:flutter/material.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       onGenerateRoute: AppRoutes.generateRoute,
        initialRoute: AppRoutes.splashScreen,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
