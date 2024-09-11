import 'package:flutter/material.dart';
import 'package:hotel/data/core/resource/assets_path.dart';
import 'package:hotel/data/routes/app_routes.dart';
import 'package:hotel/presentation/widget/images_list_widget.dart';
import 'package:hotel/presentation/widget/stak_five_star.dart';
import 'package:hotel/presentation/widget/stak_price.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.map),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Positioned(
            top: 40,
            right: 50,
            child: StakPrice(price: 127),
          ),
          const Positioned(
            top: 100,
            left: 50,
            child: StakPrice(price: 346),
          ),
          const Positioned(
            top: 170,
            right: 30,
            child: StakPrice(price: 388),
          ),
          const Positioned(
            top: 230,
            right: 180,
            child: StakPrice(price: 216),
          ),
          const Positioned(
            bottom: 330,
            left: 50,
            child: StakPrice(price: 513),
          ),
          const Positioned(
            bottom: 300,
            left: 30,
            child: StakPrice(price: 705),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: 500,
              height: 200,
              // color: Colors.red,
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Stack(
                children: [
                  ImagesListWidget(
                      image: ImageAssets.hotel_2, myroute: HotelRouteNames.search),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: StakFiveStar(),
                  ),
                ],
              ),
              ImagesListWidget(
                image: ImageAssets.hotel_3,
                myroute: HotelRouteNames.search,
                title: "Hotel 3",
              ),
              ImagesListWidget(
                image: ImageAssets.hotel_4,
                myroute: HotelRouteNames.search,
                title: "Hotel 4",
              ),
              ImagesListWidget(
                image: ImageAssets.hotel_5,
                myroute: HotelRouteNames.search,
                title: "Hotel 5",
              ),
            ],
          ),
            ),
          ),
        ],
      ),
    );
  }
}
