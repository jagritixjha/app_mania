import 'dart:developer';

import 'package:app_mania/views/cart_screen.dart';
import 'package:app_mania/views/home_screen.dart';
import 'package:app_mania/views/product_details_screen.dart';
import 'package:flutter/material.dart';

class RoutingData {
  static Route<dynamic> routeTo(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case '/second':
        if (args is String) {
          return MaterialPageRoute(
            builder: (context) => ProductDetails(imgSrc: args),
          );
        } else {
          return _errorRoute(); // Handle invalid arguments
        }
      case '/third':
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );
      default:
        return _errorRoute(); // Handle undefined routes
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(title: Text('Error')),
        body: Center(child: Text('Invalid route or arguments!')),
      ),
    );
  }
}
