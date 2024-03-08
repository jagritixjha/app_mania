import 'package:app_mania/views/home_screen.dart';
import 'package:app_mania/views/product_details_screen.dart';
import 'package:flutter/material.dart';

import '../views/cart_screen.dart';

class RoutingData {
  static Route<dynamic> routeTo(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case "/second":
        return MaterialPageRoute(
          builder: (context) => ProductDetails(imgSrc: args as String),
        );
      case "/third":
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
    }
  }
}
