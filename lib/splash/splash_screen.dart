import 'package:flutter/material.dart';
import 'package:islamiiapp/onboarding/onboarding_screen.dart';

import 'package:islamiiapp/utils/shared_prefs.dart';
import 'package:islamiiapp/widgets/app_background.dart';

import '../home/home_screen.dart' show HomeScreen;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;

    bool seen = await SharedPrefs.isOnboardingSeen();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => seen ? const HomeScreen() : const OnboardingScreen(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/image/Splash.png", height: 800),
              const SizedBox(height: 20),
              const Text(
                "Islami",
                style: TextStyle(
                  fontSize: 32,
                  color: Color(0xFFB7935F),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
