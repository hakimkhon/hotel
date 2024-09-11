import 'package:flutter/material.dart';
import 'package:hotel/data/core/constant/constants.dart';
import 'package:hotel/presentation/widget/drop_down_interval.dart';
import 'package:hotel/presentation/widget/map_widget.dart';


class ViewOnMapScreen extends StatefulWidget {
  const ViewOnMapScreen({super.key});

  @override
  State<ViewOnMapScreen> createState() => _ViewOnMapScreenState();
}

class _ViewOnMapScreenState extends State<ViewOnMapScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.darkColor,
      body: SafeArea(
        child: Column(
          children: [
            DropDownInterval(),
            //filter map
            Padding(
              padding: EdgeInsets.only(left: 18.0, right: 16, bottom: 28),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.filter_alt,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Filter',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Map',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            MapWidget(),
          ],
        ),
      ),
    );
  }
}
