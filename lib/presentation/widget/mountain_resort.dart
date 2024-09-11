import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/data/core/resource/assets_path.dart';
import 'package:hotel/presentation/widget/stak_five_star.dart';

class MountainResort extends StatelessWidget {
  const MountainResort({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  width: double.infinity,
                  height: 200,
                  padding: const EdgeInsets.only(left: 22, bottom: 22),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(ImageAssets.hotel_4),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    'Mountain Resort',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 30,
                  right: 10,
                  child: StakFiveStar(),
                ),
                const Positioned(
                  top: 30,
                  right: 10,
                  child: Icon(Icons.favorite_border, color: Colors.white, size: 30),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 140,
              padding: const EdgeInsets.only(bottom: 20, top: 10, left: 25),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    offset: Offset(0, 5),
                    blurRadius: 5,
                    spreadRadius: -5,
                  ),
                ],
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Waikiki, 4.5 km from center',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Ocean View 1 king Bed    No prepayment',
                          style: TextStyle(
                            
                            fontSize: 17,
                            color: MyColors.textColorBgWight,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Text(
                        '\$ 820',
                        style: TextStyle(
                          fontSize: 32,
                          color: MyColors.textColorBgWight,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
