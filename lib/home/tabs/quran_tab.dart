import 'package:flutter/material.dart';
import 'package:islamiiapp/quran/sura_details_screen.dart';
import 'package:islamiiapp/quran/sura_name_item.dart';


class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: suraNames.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suraNames[index],
            textAlign: TextAlign.center,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => SuraDetailsScreen(
                  suraName: suraNames[index],
                  index: index,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
