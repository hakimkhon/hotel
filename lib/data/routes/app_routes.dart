import 'package:flutter/material.dart';
import 'package:hotel/presentation/page/home/home_page.dart';
import 'package:hotel/presentation/page/splash/splash_page.dart';


class HotelRouteNames {
  static const String home = '/home';
  static const String splash = '/splash';

}

class HotelRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HotelRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case HotelRouteNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}