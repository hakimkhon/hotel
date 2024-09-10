import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/data/core/resource/assets_path.dart';
import 'package:hotel/presentation/widget/recommended.dart';
import 'package:hotel/presentation/widget/search_a_room.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          width: double.infinity,
          height: ConstSizes.height(68, context),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image(
                  width: ConstSizes.width(100, context),
                  height: ConstSizes.height(30, context),
                  image: const AssetImage(ImageAssets.hotel_1),
                  fit: BoxFit.fill,
                ),
              ), //Container
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: ConstSizes.width(100, context),
                  height: ConstSizes.height(30, context),
                  color: const Color.fromRGBO(0, 0, 0, 0.6),
                ),
              ), //Container
              Positioned(
                left: ConstSizes.height(2, context),
                top: ConstSizes.width(28, context),
                child: SizedBox(
                  width: ConstSizes.width(90, context),
                  child: const Text(
                    // 'Find place that gives you ultimate calm',
                    "Uzchasys MCHJ QK ",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ), //Container
              Positioned(
                left: ConstSizes.height(0, context),
                top: ConstSizes.width(56, context),
                child: Container(
                  width: ConstSizes.width(100, context),
                  height: ConstSizes.height(42, context),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Color.fromRGBO(25, 26, 29, 1),
                  ),
                  child: const SearchARoom(),
                ),
              ), //Container
            ], //<Widget>[]
          ),
        ),
        const Recommended(),
      ],
    );
  }
}
