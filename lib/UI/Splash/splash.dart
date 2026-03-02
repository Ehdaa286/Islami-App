import 'package:flutter/material.dart';
import '../../core/resources/routesManger/Colors_Manger.dart';
import '../../core/resources/routesManger/RoutesManager.dart';
import '../../core/resources/routesManger/imagesManger.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, routesmanager.introScreen1);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsMang.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 399),
            Image.asset(ImagesManger.SplashScreen),
            const Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset(ImagesManger.Branding),
            ),
            const Spacer(flex: 40),
          ],
        ),
      ),
    );
  }
}
