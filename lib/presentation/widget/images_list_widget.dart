import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ImagesListWidget extends StatelessWidget {
  const ImagesListWidget({
    super.key,
    required this.image,
    this.title = "Mountain Resort",
    required this.myroute,
  });
  final String title;
  final String image;
  final String myroute;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        Navigator.pushNamed(context, myroute);
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.only(left: 10, bottom: 16),
            width: 250,
            height: 140,
            margin: const EdgeInsets.only(left: 18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                )),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
