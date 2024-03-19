import 'package:app_mania/utils/global_variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.location_on_rounded),
          title: const Text(
            'New York',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          actions: [
            Container(
              height: 44,
              width: 44,
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 36,
                        height: 1.2,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(text: 'Find The'),
                      TextSpan(
                          text: ' Best',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      TextSpan(
                        text: '\nFood',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                      TextSpan(text: ' Around You'),
                    ],
                  ),
                ), // title
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Find your favourite food',
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                        ],
                      ),
                      Icon(Icons.filter_alt_outlined),
                    ],
                  ),
                ), // searchBar
                const SizedBox(
                  height: 20,
                ),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(text: 'Find '),
                      TextSpan(
                        text: ' 5km >',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepOrangeAccent),
                      ),
                    ],
                  ),
                ), // heading
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: category.map((e) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            bgc = Colors.lightGreen.shade500;
                            fgc = Colors.white;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 110,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.fromLTRB(0, 20, 5, 20),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: e['bgc'],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            e['text'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: e['fgc'],
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    }).toList(),

                    /* Container(
                        height: 40,
                        width: 110,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text(
                          'Hot Sale',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 110,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text(
                          'Popularity',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 110,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text(
                          'For you',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 110,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text(
                          'Desserts',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ),*/
                  ),
                ),
                const SizedBox(
                  height: 10,
                ), // scrollable buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/second',
                            arguments: "assets/plate1.png");
                        /*
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProductDetails(imgSrc: "assets/plate1.png"),
                          ),
                        );
                        */
                      },
                      child: Container(
                        width: 164,
                        height: 234,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 0, 10),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  child: Image.asset(
                                    "assets/plate1.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    CupertinoIcons.heart,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              'Avocado salad',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                letterSpacing: 0,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  '20 min',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_border_rounded,
                                      color: Colors.yellow.shade700,
                                    ),
                                    const SizedBox(width: 2),
                                    const Text(
                                      '4.5',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    '\$12.00',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18,
                                      letterSpacing: 0,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 38,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen.shade500,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 164,
                      height: 234,
                      padding: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 0, 10),
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(
                                  "assets/plate1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  CupertinoIcons.heart,
                                  weight: 20,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Avocado salad',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              letterSpacing: 0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                '20 min',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border_rounded,
                                    color: Colors.yellow.shade700,
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  '\$12.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                              Container(
                                height: 38,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen.shade500,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(18),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ), // cards row 1
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 164,
                      height: 234,
                      padding: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 0, 10),
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(
                                  "assets/plate1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(Icons.heart_broken)),
                            ],
                          ),
                          const Text(
                            'Avocado salad',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              letterSpacing: 0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                '20 min',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border_rounded,
                                    color: Colors.yellow.shade700,
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  '\$12.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                              Container(
                                height: 38,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen.shade500,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(18),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 164,
                      height: 234,
                      padding: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 0, 10),
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(
                                  "assets/plate1.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(Icons.heart_broken)),
                            ],
                          ),
                          const Text(
                            'Avocado salad',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              letterSpacing: 0,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                '20 min',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border_rounded,
                                    color: Colors.yellow.shade700,
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  '\$12.00',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                              Container(
                                height: 38,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.lightGreen.shade500,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(18),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ), // cards row 2
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
