// lib/theme.dart

import 'package:flutter/material.dart';
import 'colors.dart';

class AppTheme {
  static final ThemeData themedata = ThemeData(
      primaryColor: AppColors.primary,
      appBarTheme: const AppBarTheme(
        foregroundColor: AppColors.primary,
        color: AppColors.background,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.primary, backgroundColor: AppColors.background),
      ),
      scaffoldBackgroundColor: AppColors.background,
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        displayMedium: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        displaySmall: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        headlineLarge: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        headlineMedium: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        headlineSmall: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        titleLarge: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        titleMedium: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        titleSmall: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        bodyLarge: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        bodyMedium: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        bodySmall: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        labelLarge: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        labelMedium: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
        labelSmall: TextStyle(color: AppColors.primary, fontFamily: 'Roboto-Medium'),
      ).apply(
        bodyColor: AppColors.primary,
        displayColor: AppColors.primary,
      ));
}
