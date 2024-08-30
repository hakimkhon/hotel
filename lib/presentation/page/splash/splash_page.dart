import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hotel/data/core/resource/assets_path.dart';
import 'package:hotel/data/routes/app_routes.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        HotelRouteNames.home,
        (predicate) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset(LottieAssets.lottieName));
  }
}
