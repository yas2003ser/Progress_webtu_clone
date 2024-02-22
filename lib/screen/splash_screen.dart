import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

import 'package:progress/screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      duration: const Duration(seconds: 5),
      nextScreen: const LoginScreen(),
      backgroundColor: const Color.fromARGB(255, 163, 160, 160),
      splashScreenBody: Center(child: Image.asset("assets/logo.png")),
    );
  }
}
