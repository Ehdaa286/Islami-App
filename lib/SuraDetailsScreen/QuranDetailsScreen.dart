import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Models/SuraDtailsarguments.dart';
import '../core/resources/routesManger/Colors_Manger.dart';
import '../core/resources/routesManger/imagesManger.dart';

class Qurandetailsscreen extends StatefulWidget {
  const Qurandetailsscreen({super.key});

  @override
  State<Qurandetailsscreen> createState() => _QurandetailsscreenState();
}

class _QurandetailsscreenState extends State<Qurandetailsscreen> {
  List<String> SurasLines = [];
  late SuraDetailsArguments arguments;
  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    arguments = ModalRoute.of(context)!.settings.arguments as SuraDetailsArguments;
    if (SurasLines.isEmpty) loadSuracontents(arguments.index + 1);
  }
  void dispose()
  {
    super.dispose();
    arguments.mostrecentKey.currentState?.getRefreshMostRecent();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsMang.black,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: ColorsMang.gold,
        ),
        title: Text(
          arguments.suraModel.suraEn,
          style: TextStyle(color: ColorsMang.gold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImagesManger.LeftQuranShape),
                Expanded(
                  child: Text(
                    arguments.suraModel.suraAr,
                    style: TextStyle(color: ColorsMang.gold, fontSize: 27),
                    textAlign: TextAlign.center,
                  ),
                ),
                Image.asset(ImagesManger.RiGHTQuranShape),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: SurasLines.isEmpty
                  ? Center(child: CircularProgressIndicator(color: ColorsMang.gold,))
                  : ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 12),
                itemCount: SurasLines.length,
                itemBuilder: (context, index)
                {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 18),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorsMang.black, width: 1.5),
                      borderRadius: BorderRadius.circular(12),
                      color: ColorsMang.offWhite,
                    ),
                    child: Text(
                      "${SurasLines[index]} [${index + 1}]",
                      style: TextStyle(
                        color: ColorsMang.black,
                        fontSize: 18,
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:2.0, top: 12),
              child: Image.asset(
                'assets/images/UnderQuranMosque.png',
                color: ColorsMang.gold,
                height: 112,
                width: 430,
                fit: BoxFit.contain,
              ),
            ),

          ],
        ),
      ),
    );
  }
  void loadSuracontents(int index) async {
    String FilePath = "assets/files/Suras-20250714T172422Z-1-001/Suras/$index.txt";
    String FileContents = await rootBundle.loadString(FilePath);
    await Future.delayed(Duration(milliseconds: 300));
    List<String> lines = FileContents.trim().split('\n');
    setState(()
    {
      SurasLines = lines;
    });
  }
}
