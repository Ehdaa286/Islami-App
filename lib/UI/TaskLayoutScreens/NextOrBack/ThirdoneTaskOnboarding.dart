import 'package:flutter/material.dart';
import '../../../core/resources/routesManger/Colors_Manger.dart';
import '../../../core/resources/routesManger/RoutesManager.dart';
import '../../../core/resources/routesManger/imagesManger.dart';

class Introscreen3 extends StatefulWidget {
  const Introscreen3({super.key});

  @override
  State<Introscreen3> createState() => _Introscreen3State();
}

class _Introscreen3State extends State<Introscreen3> {
  @override
  void initState()
  {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, routesmanager.introScreen4);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorsMang.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Center(
              child: Image.asset(
                ImagesManger.IslamiLogoAppBar,
                height: 171,
                width: 291,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 80),
            Image.asset(
              ImagesManger.ThirdTpage,
              height: size.height * 0.35,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 80),
            const Text(
              "Reading the Quran",
              style: TextStyle(
                color: ColorsMang.gold,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
