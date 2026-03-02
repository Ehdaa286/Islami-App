import 'package:flutter/material.dart';
import 'package:islamiiapp/home/tabs/hadeth_tab.dart';
import 'package:islamiiapp/home/tabs/quran_tab.dart';
import 'package:islamiiapp/home/tabs/sebha_tab.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final tabs = const [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Islami")),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() => selectedIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book), label: "Quran"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "Hadeth"),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle), label: "Sebha"),
        ],
      ),
    );
  }
}
