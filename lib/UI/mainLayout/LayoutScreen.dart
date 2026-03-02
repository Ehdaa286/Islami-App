import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/resources/routesManger/Colors_Manger.dart';
import '../../core/resources/routesManger/imagesManger.dart';
import 'Tabs/HadesTab/HadesTab.dart';
import 'Tabs/QuranTabs/Quran.dart';
import 'Tabs/RadioTab/RadioTab.dart';
import 'Tabs/SebhaTab/SebhaTab.dart';
import 'Tabs/TimeTab/TimeTab.dart';
class Layoutscreen extends StatefulWidget {
  const Layoutscreen ({super.key});

  @override
  State<Layoutscreen> createState() => _LayoutscreenState();
}
List<Widget>Tabs=[
  Qurantab(),
  Hadestab(),
  Sebhatab(),
  Radiotab(),
  Timetab(),
];
int currentIndex = 0;
class _LayoutscreenState extends State<Layoutscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsMang.black,
      body:Tabs[currentIndex],
      bottomNavigationBar: _buildNavigationBar(),
    );
  }
    Widget _buildNavigationBar()
    {
      return BottomNavigationBar
        (
          currentIndex: currentIndex,
          items:[
            BottomNavigationBarItem(
              icon: _buildIconWidget(ImagesManger.QuranIcon,isselected: currentIndex==0),
              label: "Quran",
            ),
            BottomNavigationBarItem( icon: _buildIconWidget(ImagesManger.HadesIcon,isselected: currentIndex==1) ,
              label: "Hades",
            ),
            BottomNavigationBarItem( icon: _buildIconWidget(ImagesManger.SabhaIcon,isselected:  currentIndex==2) ,label: "Sebha"),
            BottomNavigationBarItem( icon: _buildIconWidget(ImagesManger.Radio,isselected:  currentIndex==3) ,label: "Radio"),
            BottomNavigationBarItem( icon: _buildIconWidget(ImagesManger.Statics,isselected:  currentIndex==4) ,label: "SalahTimes"),
          ],
          onTap: (index)
          {
            setState(()
            {
              currentIndex = index;
            });
          }
      );
    }
  Widget _buildIconWidget(String Iconpath, {required bool isselected})
  {
     return isselected? Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(66),
         color: ColorsMang.offWhite,
       ),
       child: Padding(
         padding: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 26),
         child: ImageIcon(
             AssetImage(Iconpath),
             color: ColorsMang.white,
             size: 19,
         ),
       ),
     ): ImageIcon(AssetImage(Iconpath));
  }
}

