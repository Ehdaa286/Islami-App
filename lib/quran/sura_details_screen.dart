import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsScreen extends StatefulWidget {
  final String suraName;
  final int index;

  const SuraDetailsScreen({
    super.key,
    required this.suraName,
    required this.index,
  });

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  void initState() {
    super.initState();
    loadFile();
  }

  Future<void> loadFile() async {
    String data = await rootBundle
        .loadString("assets/files/quran/${widget.index + 1}.txt");

    setState(() {
      verses = data.trim().split('\n');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.suraName),
      ),
      body: verses.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: verses.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "${verses[index]} ﴿${index + 1}﴾",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      fontSize: 20,
                      height: 2,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
