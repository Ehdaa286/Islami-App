import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/routesManger/Colors_Manger.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../core/resources/routesManger/imagesManger.dart';
import 'Widgets/HadetItemWidget.dart';

class Hadestab extends StatelessWidget {
  const Hadestab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/HadesBackGround.png",
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.4),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    ImagesManger.IslamiLogoAppBar,
                    color: ColorsMang.gold,
                    height: 170,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: double.infinity,
                      viewportFraction: 0.85,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 7),
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                    ),
                    items: List.generate(50, (index) => Hadetitemwidget(index:index+1 ,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
