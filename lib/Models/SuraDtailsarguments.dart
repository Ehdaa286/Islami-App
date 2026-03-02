import 'package:flutter/cupertino.dart';
import 'package:islamiiapp/Models/suraModel.dart';
import 'package:islamiiapp/UI/mainLayout/Tabs/QuranTabs/MostRecentWidgets.dart';
class SuraDetailsArguments{
  SuraModel suraModel;
  int index;
  GlobalKey<MostRecentWidgetsState>mostrecentKey;
  SuraDetailsArguments({required this.suraModel,required this.index,required this.mostrecentKey});
}