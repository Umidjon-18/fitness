import 'package:fitness/presentation/pages/onboarding/view/carousel_page.dart';
import 'package:fitness/presentation/pages/onboarding/view/welcome_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const welcomePage = '/';
  static const carouselPage = '/carouselPage';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args = routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case welcomePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const WelcomePage(),
          );
        case carouselPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CarouselPage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const WelcomePage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const WelcomePage(),
      );
    }
  }
}
