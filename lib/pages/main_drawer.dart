import 'dart:developer';

import 'package:fluter_utilities/pages/navpage/page1.dart';
import 'package:fluter_utilities/pages/navpage/page2.dart';
import 'package:fluter_utilities/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MainDrawerPage extends StatefulWidget {
  const MainDrawerPage({super.key});

  @override
  State<MainDrawerPage> createState() => _MainDrawerPageState();
}

class _MainDrawerPageState extends State<MainDrawerPage> {
  int selectedIndex = 0;
  Widget currentPage = const Page1();
  @override
  Widget build(BuildContext context) {
    //PopScope คือไม่กดกลับ
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        log('Saving data before exit'); // กดกลับแล้วจะแจ้งข้อความ
      },
      child: Scaffold(
        appBar: AppBar(),
        drawer: const DrawerWidget(),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
              if (selectedIndex == 0) {
                currentPage = const Page1();
              } else if (selectedIndex == 1) {
                currentPage = const Page2();
              }
            });
          },
        ),
      ),
    );
  }
}
