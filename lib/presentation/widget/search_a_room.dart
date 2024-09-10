import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/data/routes/app_routes.dart';
import 'package:hotel/presentation/widget/drop_dawn_buttom.dart';
import 'package:hotel/presentation/widget/inner_shadow.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SearchARoom extends StatefulWidget {
  const SearchARoom({super.key});

  @override
  State<SearchARoom> createState() => _SearchARoomState();
}

class _SearchARoomState extends State<SearchARoom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ConstSizes.height(5, context),
        bottom: ConstSizes.height(3, context),
        left: ConstSizes.width(4, context),
        right: ConstSizes.width(4, context),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              MyInnerShadow(
                title: "Place",
                height: 65,
                width: 230,
              ),
              Spacer(),
              DropDawnButtom(title: "Guests")
            ],
          ),
          const Row(
            children: [
              MyInnerShadow(
                title: "Date",
                height: 65,
                width: 230,
              ),
              Spacer(),
              DropDawnButtom(title: "Nights")
            ],
          ),
           ZoomTapAnimation(
            onTap: () {
              Navigator.pushNamed(context, HotelRouteNames.search);
            },
             child: Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.center,
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.pink),
              child: const Text(
                'Search a room',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
                       ),
           ),
        ],
      ),
    );
  }
}
