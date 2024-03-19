import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CartScreen();
}

class _CartScreen extends State<CartScreen> {
  int quantity = 1;
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
            primaryButton(context, title: 'Checkout'),
          ],
        ),
      ),
    );
  }

  Align primaryButton(BuildContext context, {required String title}) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, '/third'),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.lightGreen.shade500,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Container billCard({required String title, required String price}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      height: 28,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.grey.shade300, width: 2))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade800,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
    );
  }

  Container foodCard() {
    return Container(
      height: 110,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFfffefe),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 10, spreadRadius: 4)
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/plate1.png',
            scale: 14,
          ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Avacado Salads',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '\$ 12.00',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: const CircleBorder(side: BorderSide.none),
                    ),
                    padding: const EdgeInsets.all(0),
                    constraints: BoxConstraints.loose(
                      const Size(28, 28),
                    ),
                    onPressed: () {
                      if (quantity > 1) {
                        setState(() {
                          quantity--;
                        });
                      }
                    },
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                  Text(
                    '0$quantity',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: const CircleBorder(side: BorderSide.none),
                    ),
                    padding: const EdgeInsets.all(0),
                    constraints: BoxConstraints.loose(
                      const Size(28, 28),
                    ),
                    onPressed: () {
                      setState(() {
                        quantity++;
                      });
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ],
              ),
              const Text(
                '\$ 12.00',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
