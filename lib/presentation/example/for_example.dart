import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/presentation/widget/sam_bottom_nav_bar.dart';

class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}

class _ForExampleState extends State<ForExample> {
  int myIndex = 0;
  String title = "Home Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: ConstSizes.height(90, context),
            width: double.infinity,
            color: Colors.green,
            child: Center(
                child: Text(
              title,
              style: const TextStyle(fontSize: 50),
            )),
          ),
          SamBottomNavBar(
              currentIndex: myIndex,
              onTap: (index) {
                if (index == 0) {
                  title = "Home Page";
                } else if (index == 1) {
                  title = "Search Page";
                } else if (index == 2) {
                  title = "Notification Page";
                } else {
                  title = "Person Page";
                }
                myIndex = index;
                setState(() {});
              }),
        ],
      ),
    );
  }

  Widget test(Color color) {
    return Container(
      width: 200,
      height: 200,
      color: color,
    );
  }
}
