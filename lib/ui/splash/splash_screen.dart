import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../base/strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Get.offAllNamed(
          Strings.loginRoute,
        );
      },
    );
    return Scaffold(
      body: Center(
        child: Lottie.asset(Strings.welcomeLottie, repeat: false),
      ),
    );
  }
}
