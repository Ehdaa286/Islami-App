import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiiapp/hadeth/hadeth_details_screen.dart';
import 'package:islamiiapp/hadeth/models/hadeth_model.dart';


class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> hadethList = [];

  @override
  void initState() {
    super.initState();
    loadHadeth();
  }

  Future<void> loadHadeth() async {
    String data =
        await rootBundle.loadString("assets/files/hadeth/ahadeth.txt");

    List<String> allHadeth = data.trim().split('#');

    for (var h in allHadeth) {
      List<String> lines = h.trim().split('\n');
      if (lines.isNotEmpty) {
        String title = lines.first;
        lines.removeAt(0);
        hadethList.add(HadethModel(title, lines));
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hadethList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            hadethList[index].title,
            textAlign: TextAlign.center,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    HadethDetailsScreen(model: hadethList[index]),
              ),
            );
          },
        );
      },
    );
  }
}
