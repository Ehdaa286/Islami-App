import 'package:flutter/material.dart';
import '../home/home_screen.dart';
import '../utils/shared_prefs.dart';
import 'onboarding_model.dart';
import 'onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: "assets/images/quran.png",
      title: "Quran",
      description: "Read the Holy Quran easily",
    ),
    OnboardingModel(
      image: "assets/images/hadeth.png",
      title: "Hadeth",
      description: "Authentic Hadeth collection",
    ),
    OnboardingModel(
      image: "assets/images/sebha.png",
      title: "Sebha",
      description: "Remember Allah anytime",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        onPageChanged: (index) {
          setState(() => currentIndex = index);
        },
        itemBuilder: (_, index) =>
            OnboardingPage(model: pages[index]),
      ),
      bottomSheet: currentIndex == pages.length - 1
          ? TextButton(
              onPressed: () async {
                await SharedPrefs.setOnboardingSeen();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const HomeScreen()),
                );
              },
              child: const Text("Get Started"),
            )
          : null,
    );
  }
}
