import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/data/core/resource/assets_path.dart';
import 'package:hotel/presentation/widget/search_a_room.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: ConstSizes.height(68, context),
            color: Colors.green,
            child: Stack(
              // fit: StackFit.expand,
              // clipBehavior: Clip.antiAliasWithSaveLayer,
              // overflow: Overflow.visible,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image(
                    width: ConstSizes.width(100, context),
                    height: ConstSizes.height(30, context),
                    image: const AssetImage(ImageAssets.imageBeckroundBody),
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
                      'Find place that gives you ultimate calm',
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 15),
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 24,
                      color: MyColors.textColorBgWight,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.amber,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
