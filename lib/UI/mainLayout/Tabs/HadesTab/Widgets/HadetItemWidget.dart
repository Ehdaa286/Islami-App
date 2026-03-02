import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../core/resources/routesManger/Colors_Manger.dart';
import '../../../../../core/resources/routesManger/imagesManger.dart';
import 'HadesModel/HadesMoel.dart';

class Hadetitemwidget extends StatefulWidget {
  Hadetitemwidget({super.key, required this.index});
   int index;
  @override
  State<Hadetitemwidget> createState() => _HadetitemwidgetState();
}
class _HadetitemwidgetState extends State<Hadetitemwidget> {
  HadesModel? hadesModel;

  @override
  void initState() {
    super.initState();
    loadHadesFile(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 313,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorsMang.offWhite,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ImagesManger.LeftQuranShape, color: ColorsMang.black),
              Image.asset(ImagesManger.RiGHTQuranShape, color: ColorsMang.black),
            ],
          ),
          SizedBox(height: 6),
          hadesModel == null
              ?  Center(child: CircularProgressIndicator())
              : Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    hadesModel!.title,
                    style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                   SizedBox(height: 12),
                  Text(
                    hadesModel!.contents,
                    style:  TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadHadesFile(int index) async {
    try {
      String hadesPath =
          "assets/files/Hadeeth-20250714T172426Z-1-001/Hadeeth/h$index.txt";
      String hadesContents = await rootBundle.loadString(hadesPath);
      List<String> hadesLines = hadesContents.trim().split('\n');
      String title = hadesLines[0];
      hadesLines.removeAt(0);
      String content = hadesLines.join('\n');
      setState(() {
        hadesModel = HadesModel(title: title, contents: content);
      });
    } catch (e) {
      print(" ");
    }       ////////////After An Hour With Gpt And AbdooooKhalil
  }
}
