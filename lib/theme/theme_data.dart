import 'package:flutter/material.dart';
import 'package:sales_org/theme/constants.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      // appbar theme
      appBarTheme: AppBarTheme(
        backgroundColor: darkBackgroundColor,
        titleTextStyle: TextStyle(
          color: pureWhite,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
          color: pureWhite,
        ),
      ),

      // scaffold theme
      scaffoldBackgroundColor: darkBackgroundColor,
    );
  }
}
