import 'package:flutter/material.dart';
import '../../../../core/resources/routesManger/Colors_Manger.dart';
import '../../../../core/resources/routesManger/imagesManger.dart';

class Sebhatab extends StatefulWidget {
  const Sebhatab({super.key});

  @override
  State<Sebhatab> createState() => _SebhatabState();
}

class _SebhatabState extends State<Sebhatab> {
  int counter = 0;
  int currentZikrIndex = 0;
  double rotation = 0;
   List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
  ];
  void incrementCounter() {
    setState(() {
      counter++;
      rotation += 1;
      if (counter == 15) {
        counter = 0;
        currentZikrIndex = (currentZikrIndex + 1) % azkar.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImagesManger.SebhaBackgrounf),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImagesManger.IslamiLogoAppBar,
                  height: 171,
                  width: 291,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 100),
                Text(
                  "${azkar[currentZikrIndex]}",
                  style: TextStyle(
                    color: ColorsMang.gold,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.40,
          left: 0,
          right: 0,
          child: GestureDetector(
            ////Mohamed Ali
            onTap: incrementCounter,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                       ImagesManger.SebhaRoute,
                      height: 40,
                    ),
                    AnimatedRotation(////Abdooo Khalil
                      turns: rotation,
                      duration: Duration(milliseconds: 400),////Ali Fathy
                      child: Image.asset(
                        ImagesManger.SebhaBody,
                        height: 370,
                        width: 460,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "$counter",
                      style: TextStyle(
                        fontSize: 32,
                         fontWeight: FontWeight.bold,
                        color: ColorsMang.gold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      azkar[currentZikrIndex],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorsMang.gold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
