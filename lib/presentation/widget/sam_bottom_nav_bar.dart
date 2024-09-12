import 'package:flutter/material.dart';

class SamBottomNavBar extends StatelessWidget {
  const SamBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final Function onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: const Color.fromRGBO(25, 26, 29, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          hotelcha(
              Icons.home, currentIndex == 0 ? Colors.pink : Colors.grey, 0),
          hotelcha(
              Icons.search, currentIndex == 1 ? Colors.pink : Colors.grey, 1),
          hotelcha(Icons.notifications,
              currentIndex == 2 ? Colors.pink : Colors.grey, 2),
          hotelcha(
              Icons.person, currentIndex == 3 ? Colors.pink : Colors.grey, 3),
        ],
      ),
    );
  }

  hotelcha(IconData iconcha, Color color, int index) {
    return InkWell(
      onTap: () {
        onTap(index);
      },
      child: Container(
        width: 60,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(25, 26, 29, 1),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(41, 42, 47, 1),
            offset: Offset(-5, -5),
            blurRadius: 2,
            spreadRadius: 2,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 1),
            offset: Offset(5, 5),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Icon(iconcha, size: 36, color: color),
      ),
    );
  }

  // dropShodowBox(Widget child, int index) {
  //   Container(
  //     width: 50,
  //     height: 50,
  //     alignment: Alignment.center,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //       color: const Color.fromRGBO(25, 26, 29, 1),
  //       boxShadow: const [
  //         BoxShadow(
  //           color: Color.fromRGBO(41, 42, 47, 1),
  //           offset: Offset(-7, -7),
  //           blurRadius: 10,
  //           spreadRadius: 0,
  //         ),
  //         BoxShadow(
  //           color: Color.fromRGBO(0, 0, 0, 1),
  //           offset: Offset(7, 7),
  //           blurRadius: 10,
  //           spreadRadius: -8,
  //         ),
  //       ],
  //     ),
  //     child: Icon(iconcha, size: 30, color: color),
  //   );
  // }
}
