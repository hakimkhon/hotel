import 'package:flutter/material.dart';
import 'package:hotel/data/core/resource/assets_path.dart';
import 'package:hotel/data/routes/app_routes.dart';
import 'package:hotel/presentation/widget/stak_five_star.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class NearTheBeaches extends StatelessWidget {
  const NearTheBeaches({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 28, left: 18, bottom: 16),
          child: Text(
            'Near the beaches',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          // color: Colors.white,
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // itemImageList(ImageAssets.hotel_1),
              Stack(
                children: [
                  itemImageList(context, ImageAssets.hotel_2),
                  const Positioned(
                    right: 0,
                    top: 0,
                    child: StakFiveStar(),
                  ),
                ],
              ),
              itemImageList(context, ImageAssets.hotel_3),
              itemImageList(context, ImageAssets.hotel_4),
              itemImageList(context, ImageAssets.hotel_5),
            ],
          ),
        )
      ],
    );
  }

  Widget itemImageList(context, String image) {
    return ZoomTapAnimation(
      onTap: () {
        Navigator.pushNamed(context, HotelRouteNames.map);
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
            child: const Text(
              'Mountain Resort',
              style: TextStyle(
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
