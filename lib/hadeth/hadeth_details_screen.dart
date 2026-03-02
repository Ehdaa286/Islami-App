import 'package:flutter/material.dart';
import 'package:islamiiapp/hadeth/models/hadeth_model.dart';


class HadethDetailsScreen extends StatelessWidget {
  final HadethModel model;

  const HadethDetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(model.title)),
      body: ListView.builder(
        itemCount: model.content.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              model.content[index],
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
      ),
    );
  }
}
