import 'package:flutter/material.dart';
import '../Models/suraModel.dart';
import '../core/resources/routesManger/Colors_Manger.dart';
import '../core/resources/routesManger/imagesManger.dart';

class MostRecentItem extends StatelessWidget {
   SuraModel suraModel;
   MostRecentItem({super.key, required this.suraModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorsMang.gold,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                suraModel.suraEn,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: ColorsMang.black,
                ),
              ),
              Text(
                suraModel.suraAr,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: ColorsMang.black,
                ),
              ),
              Text(
                "${suraModel.suraVerses} Verses",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: ColorsMang.black,
                ),
              ),
            ],
          ),
          Image.asset(
            ImagesManger.MostRecent,
            width: 120,
            height: 100,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
