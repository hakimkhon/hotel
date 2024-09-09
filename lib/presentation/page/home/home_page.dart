import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/presentation/screen/Home.dart';
import 'package:hotel/presentation/screen/notifications.dart';
import 'package:hotel/presentation/screen/search.dart';
import 'package:hotel/presentation/screen/user.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List pages = const [
    Home(),
    Search(),
    Notifications(),
    User(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: MyColors.bgColor,
        currentIndex: currentIndex,
        selectedItemColor: MyColors.selectedItemColor,
        unselectedItemColor: MyColors.bgDarkColor,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home, size: 36),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.search_rounded, size: 36),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.notifications, size: 36),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person, size: 36),
          ),
        ],
      ),
    );
  }
}
