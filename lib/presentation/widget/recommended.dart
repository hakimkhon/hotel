import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/data/core/resource/assets_path.dart';

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
            padding: EdgeInsets.only(top: 24, left: 24),
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
            height: 200,
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
    return Container(
      width: 270,
      height: 180,
      margin: EdgeInsets.only(left: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey
      ),
      child: Image.asset(image, fit: BoxFit.fill,),
    );
  }
}
