import 'package:flutter/material.dart';
import 'package:islamiiapp/UI/mainLayout/Tabs/QuranTabs/MostRecentWidgets.dart';
import 'package:islamiiapp/core/resources/routesManger/Colors_Manger.dart';
import '../../../../Models/SuraDtailsarguments.dart';
import '../../../../Models/suraModel.dart';
import '../../../../core/resources/routesManger/RoutesManager.dart';
import '../../../../core/resources/routesManger/imagesManger.dart';
import '../../../core/PrefsManager/PrefsManager.dart';

class  QuranItem extends StatelessWidget {
   SuraModel suraModel;
   int index;
   GlobalKey<MostRecentWidgetsState>mostrecentkey;
   QuranItem({
    super.key,
    required this.suraModel,
    required this.index,
     required this.mostrecentkey
  });

  @override
  Widget build(BuildContext context)  {
    return InkWell(
      onTap: ()
      {
        prefsManager.saveSuraindex(index);
        Navigator.pushNamed(context,routesmanager.quranDetails,arguments:SuraDetailsArguments(suraModel: suraModel, index: index,mostrecentKey: mostrecentkey));
      },
          child: Row(
            children:
            [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    ImagesManger.SuraShape,
                    width: 40,
                    height: 40,
                    color: ColorsMang.gold,
                  ),
                  Text(
                    "${index + 1}",
                    style:  TextStyle(
                      color: ColorsMang.gold,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
               SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    suraModel.suraEn,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    "Verses: ${suraModel.suraVerses}",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              Spacer(),
              Text(
                suraModel.suraAr,
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
    );
  }
}