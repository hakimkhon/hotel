import 'package:flutter/material.dart';
import 'package:hotel/presentation/example/scroling_horizantal_page.dart';
import 'package:hotel/presentation/page/home/home_page.dart';
import 'package:hotel/presentation/page/splash/splash_page.dart';


class HotelRouteNames {
  static const String home = '/home';
  static const String splash = '/splash';
  static const String example = '/example';

}

class HotelRoute {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HotelRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case HotelRouteNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case HotelRouteNames.example:
        return MaterialPageRoute(builder: (context) => const ScrolingHorizantalPage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}