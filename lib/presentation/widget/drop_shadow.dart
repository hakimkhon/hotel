import 'package:flutter/material.dart';

class DropShadow extends StatelessWidget {
  const DropShadow({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.child,
  });
  final double height;
  final double width;
  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: const Color.fromRGBO(25, 26, 29, 1),
        boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(41, 42, 47, 1),
              offset: Offset(-7, -7),
              blurRadius: 10,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 1),
              offset: Offset(7, 7),
              blurRadius: 10,
              spreadRadius: -8,
            ),
          ],
      ),
      child: child,
    );
  }
}
