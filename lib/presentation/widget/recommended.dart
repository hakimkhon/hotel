import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/data/core/resource/assets_path.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 28, left: 24, bottom: 16),
            child: Text(
              'Recommended',
              style: TextStyle(
                fontSize: 24,
                color: MyColors.textColorBgWight,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                itemImageList(ImageAssets.hotel_1),
                itemImageList(ImageAssets.hotel_2),
                itemImageList(ImageAssets.hotel_3),
                itemImageList(ImageAssets.hotel_4),
                itemImageList(ImageAssets.hotel_5),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget itemImageList(String image) {
    return ZoomTapAnimation(
      child: Container(
        width: 270,
        // height: 160,
        margin: const EdgeInsets.only(left: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
