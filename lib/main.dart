import 'package:flutter/material.dart';
import 'package:sales_org/routes/app_routes.dart';
import 'package:sales_org/theme/theme_data.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/views/profile_screens/profile_document_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: AppRoutes.splashScreen,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => Sizer(
          builder: (context, Orientation orientation, DeviceType deviceType) {
        return child ?? const SizedBox();
      }),
      home: ProfileDocumentScreen(),
    );
  }
}
