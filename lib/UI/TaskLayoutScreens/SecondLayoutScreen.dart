import 'package:flutter/material.dart';
import '../../core/resources/routesManger/Colors_Manger.dart';
import '../../core/resources/routesManger/RoutesManager.dart';
import '../../core/resources/routesManger/imagesManger.dart';

class Introscreen2 extends StatefulWidget {
  const Introscreen2({super.key});

  @override
  State<Introscreen2> createState() => _Introscreen2State();
}

class _Introscreen2State extends State<Introscreen2> {
  @override
  void initState()
  {
    super.initState();
    {
      Future.delayed(Duration(seconds: 1),(){
        Navigator.pushReplacementNamed(context, routesmanager.introScreen3);
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
              ImagesManger.secondTpage,
              height: size.height * 0.35,
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
            Text("We Are Very Excited To Have You\n In Our Community",
                style: TextStyle(
              color: ColorsMang.gold,
              fontSize: 20,
              fontWeight: FontWeight.bold,),
            ),
              ],
        ),
      ),
    );
  }
}