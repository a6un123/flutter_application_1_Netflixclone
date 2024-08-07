import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constents/Color_constens.dart';
import 'package:flutter_application_1/view/CommingSoonScren/comming_soon_screen.dart';
import 'package:flutter_application_1/view/SerchScreen/SerchScreen.dart';
import 'package:flutter_application_1/view/downlod_screen/downlode_screen.dart';
import 'package:flutter_application_1/view/homescreen/homescreen_.dart';
import 'package:flutter_application_1/view/morescreen/morescreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int Selectedindex = 0;
  List<Widget> myscreens = [
    HomeScree(),
    Serchscreen(),
    CommingSoonScreen(),
    DownlodeScreen(),
    Morescreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myscreens[Selectedindex],
      backgroundColor: ColourConstents.mainblack,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColourConstents.mainwhite,
        currentIndex: Selectedindex,
        backgroundColor: Colors.black,
        unselectedItemColor: ColourConstents.mainwhite,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "serch"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: "screens"),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download_sharp), label: "Downlods"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
        onTap: (value) {
          setState(() {
            Selectedindex = value;
          });
        },
      ),
    );
  }
}
