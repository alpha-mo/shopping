import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ojail_shopping/presentation/theme/app_colors.dart';

class AppTheme {
  static final ThemeData owenTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    // ---------------------------------------------------------------------------------
    // Scaffold
    scaffoldBackgroundColor: AppColors.secondaryAccent,
    // ---------------------------------------------------------------------------------
    // app bar
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBarBG,
      foregroundColor: AppColors.titleColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        letterSpacing: 2,
      ),
      iconTheme: IconThemeData(color: AppColors.titleColor),
      surfaceTintColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.secondaryAccent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.secondaryColor,
      ),
    ),
    // ---------------------------------------------------------------------------------
    // text
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.textColor,
        fontSize: 18,
        letterSpacing: 1,
      ),
      headlineMedium: TextStyle(
        color: AppColors.highlightColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      titleMedium: TextStyle(
        color: AppColors.titleColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
      titleSmall: TextStyle(
        color: AppColors.titleColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    ),
    // ---------------------------------------------------------------------------------
    // Alert dialog
    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      backgroundColor: AppColors.secondaryColor,
      titleTextStyle: TextStyle(
        color: AppColors.highlightColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
        decorationColor: AppColors.secondaryAccent,
      ),
    ),
    // ---------------------------------------------------------------------------------
    // List item
    listTileTheme: ListTileThemeData(
      iconColor: AppColors.highlightColor,
      textColor: AppColors.textColor,
      tileColor: AppColors.secondaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      titleTextStyle: TextStyle(
        color: AppColors.titleColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    ),

    // ---------------------------------------------------------------------------------
    // List view
  );
}
