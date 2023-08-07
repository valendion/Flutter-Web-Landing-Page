import 'package:flutter/material.dart';
import 'package:web_landing_page/screen/about/about_screen.dart';
import 'package:web_landing_page/screen/home/home_screen.dart';
import 'package:web_landing_page/screen/not_found/not_found_screen.dart';
import 'package:web_landing_page/screen/product/product_screen.dart';
import 'package:web_landing_page/utils/route/route_name.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeRoute:
        return _getPageRoute(const HomeScreen());

      case RouteName.productRoute:
        return _getPageRoute(const ProductScreen());

      case RouteName.aboutRoute:
        return _getPageRoute(const AboutScreen());

      default:
        return _getPageRoute(const NotFoundScreen());
    }
  }

  PageRoute _getPageRoute(Widget widget) {
    var fadeRoute = FadeRoute(child: widget);
    return fadeRoute;
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;
  FadeRoute({required this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
