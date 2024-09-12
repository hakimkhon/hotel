import 'package:flutter/material.dart';
import 'package:hotel/presentation/widget/sam_bottom_nav_bar.dart';

class ScrolingHorizantalPage extends StatefulWidget {
  const ScrolingHorizantalPage({super.key});

  @override
  State<ScrolingHorizantalPage> createState() => _ScrolingHorizantalPageState();
}

class _ScrolingHorizantalPageState extends State<ScrolingHorizantalPage> {
  int myIndex = 0;
  String title = "salom";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Text(
            "salom",
            style: TextStyle(fontSize: 50),
          )),
          SamBottomNavBar(
              currentIndex: myIndex,
              onTap: (index) {
                // if (index == 0) {
                //   title = "Assalom";
                // }
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
