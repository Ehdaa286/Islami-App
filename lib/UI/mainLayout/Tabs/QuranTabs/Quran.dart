import 'package:flutter/material.dart';
import '../../../../Models/suraModel.dart';
import '../../../../core/resources/routesManger/Colors_Manger.dart';
import '../../../../core/resources/routesManger/imagesManger.dart';
import 'MostRecentWidgets.dart';
import 'QuranItem.dart';

class Qurantab extends StatefulWidget {
  const Qurantab({super.key});

  @override
  State<Qurantab> createState() => _QurantabState();
}

class _QurantabState extends State<Qurantab> {
  GlobalKey<MostRecentWidgetsState>mostRecentKey=GlobalKey<MostRecentWidgetsState>();
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
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImagesManger.IslamiLogoAppBar),
                 SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        ImagesManger.QuranIcon,
                        width: 24,
                        height: 24,
                        color: ColorsMang.gold,
                      ),
                    ),
                    hintText: "Sura Name",
                    filled: false,
                    fillColor: ColorsMang.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorsMang.gold, width: 1),
                    ),
                  ),
                ),
                MostRecentWidgets(key: mostRecentKey,),
                SizedBox(height: 10),
                   ListView.separated(
                     physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    itemBuilder: (context, index) {
                      return QuranItem(
                        suraModel: SuraModel.suras[index],
                        index: index, mostrecentkey: mostRecentKey,
                      );
                    },
                    separatorBuilder: (context, index) => Divider(color: ColorsMang.white),
                    itemCount: SuraModel.suras.length,
                  ),
               ],
            ),
          ),
        ),
      ],
    );
  }
}
