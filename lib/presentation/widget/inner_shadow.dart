import 'package:flutter/material.dart';
import 'package:flutter_inner_shadow/flutter_inner_shadow.dart';
import 'package:hotel/data/core/constant/const_sizes.dart';

class MyInnerShadow extends StatelessWidget {
  const MyInnerShadow({
    super.key,
    required this.title,
    required this.height,
    required this.width,
    // required this.offset,
  });
  final String title;
  final double height;
  final double width;
  // final double offset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        height: height,
        width: width,
        child: InnerShadow(
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 10,
              offset: const Offset(5, 5),
            ),
            const Shadow(
              color: Color.fromRGBO(41, 42, 47, 1),
              blurRadius: 10,
              offset: Offset(-5, -5),
            ),
          ],
          child: Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromRGBO(25, 26, 29, 1),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: ConstSizes.width(6, context)),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
