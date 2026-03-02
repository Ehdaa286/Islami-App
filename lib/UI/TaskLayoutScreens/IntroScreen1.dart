import 'package:flutter/material.dart';
import '../../core/resources/routesManger/Colors_Manger.dart';
import '../../core/resources/routesManger/RoutesManager.dart';
import '../../core/resources/routesManger/imagesManger.dart';

class Introscreen1 extends StatefulWidget {
  const Introscreen1({super.key});

  @override
  State<Introscreen1> createState() => _Introscreen1State();
}

class _Introscreen1State extends State<Introscreen1> {
  @override
  void initState() {
    super.initState();
    {
      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacementNamed(context, routesmanager.introScreen2);
      }
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsMang.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Image.asset(
                ImagesManger.IslamiLogoAppBar,
                height: 171,
                width: 291,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 50),
            Image.asset(
              ImagesManger.FirstTpage,
              height: MediaQuery.of(context).size.width* 0.80,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 80),
            const Text(
              "Welcome To Islami App",
              style: TextStyle(
                color: ColorsMang.gold,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}