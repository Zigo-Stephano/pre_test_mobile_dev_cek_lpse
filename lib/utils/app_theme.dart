import 'package:flutter/material.dart';

import '../base/strings.dart';

class AppTheme {
  static AppTheme? _instance;

  AppTheme._internal() {
    _instance = this;
  }

  factory AppTheme() => _instance ?? AppTheme._internal();

  // App Colors
  static const Color darkMaroon = Color(0xff4E0E0E);
  static const Color slightlyDarkMaroon = Color(0xff800000);
  static const Color primaryColor = Color(0xFF508D61);
  static const Color secondaryColor = Color(0xFF1D3E2F);
  static const Color brightMaroon = Color(0xffEA9999);
  static const Color darkOrange = Color(0xffA61A02);
  static const Color slightlyDarkOrange = Color(0xffCD3602);
  static const Color orange = Color(0xffED4D01);
  static const Color lightOrange = Color(0xffFC6E22);
  static const Color brightOrange = Color(0xffFD9F6D);
  static const Color black = Color(0xff1e1e1e);
  static const Color black10 = Color(0xff414141);
  static const Color black20 = Color(0xff928F8F);
  static const Color black30 = Color(0xffA5A5A5);
  static const Color black40 = Color(0xffD2D2D2);
  static const Color white = Colors.white;
  static Color white10 = Colors.white.withOpacity(0.88);
  static Color white20 = Colors.white.withOpacity(0.76);
  static Color white30 = Colors.white.withOpacity(0.66);
  static Color white40 = Colors.white.withOpacity(0.55);

  // App Text Theme
  final TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: 64,
        fontWeight: FontWeight.w600,
        fontFamily: Strings.fontFamily),
    displayMedium: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w600,
        fontFamily: Strings.fontFamily),
    displaySmall: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        fontFamily: Strings.fontFamily),
    headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontFamily: Strings.fontFamily),
    headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: Strings.fontFamily),
    titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: Strings.fontFamily),
    titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: Strings.fontFamily),
    titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: Strings.fontFamily),
    bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: Strings.fontFamily),
    bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: Strings.fontFamily),
    bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: Strings.fontFamily),
    labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.2,
        fontFamily: Strings.fontFamily),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: Strings.fontFamily,
    ),
  );

  // App Themes
  ThemeData getThemeData(bool isDarkMode) {
    if (isDarkMode) return _darkTheme();
    return _lightTheme();
  }

  ThemeData _lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: primaryColor),
        centerTitle: true,
        toolbarTextStyle: TextStyle(color: primaryColor),
      ),
      textTheme: _textTheme,
      primaryColor: primaryColor,
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.lightGreen,
        height: 60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightGreen,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: primaryColor,
            secondary: secondaryColor,
          ),
    );
  }

  ThemeData _darkTheme() {
    return ThemeData();
  }
}
