import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';

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
      height: ConstSizes.height(10, context),
      width: double.infinity,
      color: const Color.fromRGBO(25, 26, 29, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          hotelcha(
            Icons.home,
            currentIndex == 0 ? Colors.pink : Colors.grey,
            0,
            currentIndex
          ),
          hotelcha(
            Icons.search,
            currentIndex == 1 ? Colors.pink : Colors.grey,
            1,
            currentIndex
          ),
          hotelcha(
            Icons.notifications,
            currentIndex == 2 ? Colors.pink : Colors.grey,
            2,
            currentIndex
          ),
          hotelcha(
            Icons.person,
            currentIndex == 3 ? Colors.pink : Colors.grey,
            3,
            currentIndex
          ),
        ],
      ),
    );
  }

  hotelcha(IconData iconcha, Color color, int index, int currentIndex) {
    return InkWell(
      onTap: () {
        onTap(index);
      },
      child: Container(
        width: 50,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(25, 26, 29, 1),
          boxShadow:  currentIndex != index ? [] : const[
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
        child: Icon(iconcha, size: 32, color: color),
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
