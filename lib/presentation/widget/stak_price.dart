import 'package:flutter/material.dart';

class StakPrice extends StatelessWidget {
  const StakPrice({super.key, required this.price});
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.pink),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "\$$price+",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
