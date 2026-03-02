import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../SuraDetailsScreen/QuranDetailsScreen.dart';
import '../../../UI/Splash/splash.dart';
import '../../../UI/TaskLayoutScreens/IntroScreen1.dart';
import '../../../UI/TaskLayoutScreens/NextOrBack/FifthonBoarding.dart';
import '../../../UI/TaskLayoutScreens/NextOrBack/FourthOnboarding.dart';
import '../../../UI/TaskLayoutScreens/NextOrBack/ThirdoneTaskOnboarding.dart';
import '../../../UI/TaskLayoutScreens/SecondLayoutScreen.dart';
import '../../../UI/mainLayout/LayoutScreen.dart';

class routesmanager {
  static const String splash = "/splash";
  static const String introScreen1 = "/1";
  static const String introScreen2 = "/2";
  static const String introScreen3 = "/3";
  static const String introScreen4 = "/4";
  static const String introScreen5 = "/5";
  static const String layout = "/layout";
  static const String quranDetails = "/SuraDetails";

  static Route? getRoute(RouteSettings settings) {
    switch (settings.name)
    {
      case splash:
        return CupertinoPageRoute(builder: (_) => const SplashScreen());
      case introScreen1:
        return CupertinoPageRoute(builder: (_) => const Introscreen1());
      case introScreen2:
        return CupertinoPageRoute(builder: (_) => const Introscreen2());
      case introScreen3:
        return CupertinoPageRoute(builder: (_) => const Introscreen3());
      case introScreen4:
        return CupertinoPageRoute(builder: (_) => const Introscreen4());
      case introScreen5:
        return CupertinoPageRoute(builder: (_) => const Introscreen5());
      case layout:
        return CupertinoPageRoute(builder: (_) => const Layoutscreen());
      case quranDetails:
        return CupertinoPageRoute(builder: (_) => Qurandetailsscreen(),settings: settings);
    }
  }
}
