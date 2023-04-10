import 'package:base_auth_settings/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      backgroundColor: AppColors.lightBackground,
      primaryColor: AppColors.lightPrimary,
      scaffoldBackgroundColor: AppColors.lightBackground,
      // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      // appBarTheme: AppBarTheme(
      //   textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      //   iconTheme: IconThemeData(
      //     color: lightAccent,
      //   ),
      // ),
    );
  }
}
