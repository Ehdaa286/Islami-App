import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/routesManger/Colors_Manger.dart';
import '../../../../core/resources/routesManger/imagesManger.dart';

class Radiotab extends StatelessWidget {
  const Radiotab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    Positioned.fill(
    child: Image.asset(
      ImagesManger.IslamiBackground,
      fit: BoxFit.cover,
    ),
    ),
    ]
    );
  }
}
