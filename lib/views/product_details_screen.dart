import 'package:app_mania/common_widgets.dart';
import 'package:app_mania/utils/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String imgSrc;
  const ProductDetails({super.key, required this.imgSrc});

  @override
  State<StatefulWidget> createState() => _ProductDetails();
}

class _ProductDetails extends State<ProductDetails> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade600,
      body: Padding(
        // padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
        padding: const EdgeInsets.only(top: 40.0),
        child: Stack(
          // fit: StackFit.expand,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    CupertinoIcons.heart,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.350,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                // padding: const EdgeInsets.only(left: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 124,
                      margin: const EdgeInsets.only(top: 150, bottom: 40),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen.shade500,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
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
                              size: 24,
                            ),
                          ),
                          Text(
                            '$quantity',
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Avocado salad',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            text:
                                'Green cabbage is round and compact with tightly packed smooth leaves and a mild flavor. Feel free to mix in other types of cabbage...',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                            children: [
                              TextSpan(
                                text: ' Read More',
                                style: TextStyle(
                                  color: Colors.lightGreen.shade400,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 26,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '⭐ 4.5',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '🔥 100 Kcal',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '⏰ 5-10 Min',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Ingredients',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: ingredients.map(
                              (e) {
                                return Container(
                                  width: 60,
                                  height: 60,
                                  margin: const EdgeInsets.only(right: 12),
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(e),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            /*Container(
              height: 250,
              margin: const EdgeInsets.only(top: 60),
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 250,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 45,
                          color: Colors.lightGreen,
                        ),
                      ],
                      image: DecorationImage(
                          image: AssetImage("assets/plate1.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),*/
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/third'),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 12,
                    left: 16,
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen.shade500,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    'Add To Cart',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            primaryButton(context, title: 'Add To Cart', screen: '/third'),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 250,
                width: 250,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 50,
                        color: Colors.lightGreen.shade400,
                      ),
                    ],
                    image: const DecorationImage(
                        image: AssetImage("assets/plate1.png"),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
