import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_app/app/constants/style/app_colors.dart';
import 'package:trip_app/app/constants/style/app_dark_colors.dart';
import 'package:trip_app/app/constants/style/app_light_colors.dart';

class AppTheme {
  static const CupertinoThemeData cupertinoLightThemeData = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: AppLightColors.darkBlue,
    barBackgroundColor: Colors.red,
    scaffoldBackgroundColor: Colors.teal,
    textTheme: CupertinoTextThemeData(primaryColor: Colors.black),
  );

  static const CupertinoThemeData cupertinoDarkThemeData = CupertinoThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.red,
      barBackgroundColor: Colors.red,
      scaffoldBackgroundColor: Colors.cyanAccent,
      textTheme: CupertinoTextThemeData(primaryColor: AppColors.white));

  static ColorScheme colorSchemeDark = const ColorScheme(
    // primary: AppDarkColors.darkBlue,
    primary: AppColors.primaryColor,
    secondary: AppDarkColors.primaryColor,
    surface: AppDarkColors.surfaceColor,
    background: Colors.black,
    brightness: Brightness.dark,
    error: Colors.teal,
    onBackground: Colors.black,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: AppDarkColors.darkTextColor,
    primaryVariant: AppDarkColors.darkBlue,
    secondaryVariant: AppDarkColors.lightBlue,
  );

  static ColorScheme colorSchemeLight = const ColorScheme(
    primary: AppColors.primaryColor,
    secondary: AppColors.primaryColor,
    surface: AppLightColors.surfaceColor,
    background: Colors.lightBlue,
    brightness: Brightness.light,
    error: Colors.purple,
    onBackground: Colors.black,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: AppLightColors.lightTextColor,
    primaryVariant: AppLightColors.lightWhite,
    secondaryVariant: AppLightColors.lightGreen,
  );

  static ThemeData darkThemeData = ThemeData(
    cupertinoOverrideTheme: cupertinoDarkThemeData,
    textTheme: const TextTheme(bodyText2: TextStyle(color: AppColors.white)),
    colorScheme: colorSchemeDark,
  );

  static final ThemeData lightThemeData = ThemeData(
    cupertinoOverrideTheme: cupertinoLightThemeData,
    textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
    colorScheme: colorSchemeLight,
  );
}
