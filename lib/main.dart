import 'package:app_mania/utils/routing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food mania",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      // home: const HomeScreen(),

      initialRoute: '/',
      onGenerateRoute: RoutingData.routeTo,

      /*routes: {
        "/": (context) => const HomeScreen(),
        "/second": (context) => ProductDetails(imgSrc: "assets/plate1.png"),
        "/third": (context) => const CartScreen(),
      },*/
    );
  }
}
