import 'package:app_mania/common_widgets.dart';
import 'package:flutter/cupertino.dart';
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
      backgroundColor: Colors.lightGreen.shade500,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.140,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFFf8f9fc),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
                  child: Column(
                    children: [
                      foodCard(),
                      foodCard(),
                      foodCard(),
                      Container(
                        height: 70,
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFFfffefe),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10,
                                spreadRadius: 4,
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.ticket,
                                      size: 34,
                                      color: Colors.black54,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Promo Code',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            TextButton(
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.lightGreen.shade600,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 8),
                                shadowColor: Colors.lightGreen.shade600,
                                elevation: 10,
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Apply',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 240,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFfffefe),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 10,
                      spreadRadius: 4,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, right: 16, left: 16),
                  child: Column(
                    children: [
                      billCard(title: 'Subtotal', price: '\$ 70.00'),
                      billCard(title: 'Delivery', price: '\$ 3.50'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade900,
                            ),
                          ),
                          Text(
                            '\$73.50',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            primaryButton(context, title: 'Checkout', screen: '/third'),
          ],
        ),
      ),
    );
  }
}
