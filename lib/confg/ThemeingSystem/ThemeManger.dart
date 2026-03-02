import 'package:flutter/material.dart';

import '../../core/resources/routesManger/Colors_Manger.dart';


class ThemeManger{
  static ThemeData Dark=ThemeData(
    scaffoldBackgroundColor: ColorsMang.black,
    bottomNavigationBarTheme:BottomNavigationBarThemeData(
        backgroundColor: ColorsMang.gold,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorsMang.offWhite,
        unselectedItemColor: ColorsMang.black,
    ) ,
    textTheme: TextTheme(
      labelSmall:  TextStyle(color: ColorsMang.white,fontSize: 30,fontWeight: FontWeight.bold,),

    )
  );
  static ThemeData Light =ThemeData();

}