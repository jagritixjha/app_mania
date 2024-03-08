import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CartScreen();
}

class _CartScreen extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        // leading: const Icon(Icons.location_on_rounded),
        title: const Text(
          'Your cart',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.menu_rounded),
          )
        ],
      ),
    );
  }
}
