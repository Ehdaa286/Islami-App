import 'package:flutter/material.dart';
import '../../../../Models/suraModel.dart';
import '../../../../MostRecentItems/MostRecentItems.dart';
import '../../../../core/resources/routesManger/Colors_Manger.dart';
import '../../../core/PrefsManager/PrefsManager.dart';

class MostRecentWidgets extends StatefulWidget {
  const MostRecentWidgets({super.key});

  @override
  State<MostRecentWidgets> createState() => MostRecentWidgetsState();
}

class MostRecentWidgetsState extends State<MostRecentWidgets> {
  List<SuraModel> mostRecentSuras = [];
  bool isLoading = true;
  getRefreshMostRecent() async {
    mostRecentSuras = await prefsManager.getMostRecentSuras();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getRefreshMostRecent();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Most Recent",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 3),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.19,
          width: MediaQuery.of(context).size.width * 0.99,
          child: isLoading
              ?Center(child: CircularProgressIndicator())
              : mostRecentSuras.isEmpty
              ? Center(
            child: Text(
              "No recent suras yet.",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ) : ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => MostRecentItem(
              suraModel: mostRecentSuras[index],
            ),
            separatorBuilder: (context, index) =>
            const SizedBox(width: 10),
            itemCount: mostRecentSuras.length,
          ),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "Suras List",
            style: TextStyle(
              color: ColorsMang.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
