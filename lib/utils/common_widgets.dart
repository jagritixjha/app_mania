import 'package:app_mania/utils/global_variables.dart';
import 'package:flutter/material.dart';

Align primaryButton(BuildContext context,
    {required String title, required String screen}) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: InkWell(
      onTap: () => Navigator.pushNamed(context, screen),
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
        border:
            Border(bottom: BorderSide(color: Colors.grey.shade300, width: 2))),
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

Container foodCard(
    {required void Function()? onPressed1,
    required void Function()? onPressed2}) {
  return Container(
    height: 110,
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 4),
    margin: const EdgeInsets.only(bottom: 12),
    decoration: BoxDecoration(
      color: const Color(0xFFfffefe),
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      boxShadow: [
        BoxShadow(color: Colors.grey.shade200, blurRadius: 10, spreadRadius: 4)
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
                  onPressed: onPressed1,
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
                  onPressed: onPressed2,
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
