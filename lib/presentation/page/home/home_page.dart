import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/presentation/screen/Home.dart';
import 'package:hotel/presentation/screen/notifications.dart';
import 'package:hotel/presentation/screen/search.dart';
import 'package:hotel/presentation/screen/user.dart';
import 'package:hotel/presentation/widget/drop_shadow.dart';

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
      body: SizedBox(
        height: ConstSizes.height(100, context),
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: MyColors.darkColor,
        currentIndex: currentIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            icon: DropShadow(
              height: 60,
              width: 60,
              radius: 10,
              child: Icon(Icons.home, size: 32),
            ),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.search_rounded, size: 32),
          ),
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.notifications, size: 32) , 
          ),
         ],
      ),
    );
  }
}





        // items: const [
       
        // ],