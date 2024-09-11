import 'package:flutter/material.dart';

class StakFiveStar extends StatelessWidget {
  const StakFiveStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 26,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.pink),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '4.5',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(Icons.star_rate_rounded, size: 16, color: Colors.white)
        ],
      ),
    );
  }
}
