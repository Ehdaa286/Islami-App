import 'package:flutter/material.dart';
import '../../../core/resources/routesManger/Colors_Manger.dart';
import '../../../core/resources/routesManger/RoutesManager.dart';
import '../../../core/resources/routesManger/imagesManger.dart';
import '../../core/resources/routesManger/imagesManger.dart';
class Introscreen5 extends StatefulWidget {
  const Introscreen5({super.key});

  @override
  State<Introscreen5> createState() => _Introscreen5State();
}

class _Introscreen5State extends State<Introscreen5> {
  @override
  void initState() {
    super.initState();
    {
      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacementNamed(context, routesmanager.layout);
      }
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: ColorsMang.black,
      body: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 60.0),
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
            SizedBox(height:80),
            Image.asset(
              ImagesManger.FifthTpage,
              height: size.height * 0.35,
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 80),
            const Text(
              "Holy Quran Radio",
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