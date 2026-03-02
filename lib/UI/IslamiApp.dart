import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../confg/ThemeingSystem/ThemeManger.dart';
import '../core/resources/routesManger/RoutesManager.dart';
class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 862),
      // minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute:routesmanager.getRoute,
        initialRoute: routesmanager.splash,
        theme:ThemeManger.Dark,
        darkTheme: ThemeManger.Dark,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
