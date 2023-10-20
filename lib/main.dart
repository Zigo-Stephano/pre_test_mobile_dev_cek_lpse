import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'base/routes.dart';
import 'ui/splash/splash_screen.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme().getThemeData(false),
      themeMode: ThemeMode.light,
      home: const SplashScreen(),
      getPages: [
        ...mainRoutes,
      ],
    );
  }
}
