import 'package:flutter/material.dart';

class product_name extends StatefulWidget {
  const product_name({super.key});

  @override
  State<product_name> createState() => _product_nameState();
}

class _product_nameState extends State<product_name> {
  bool x = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bix Bag Limited Edition 229',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 24,
                ),
                SizedBox(width: 4),
                Text(
                  '4.8',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4),
                Text("(320 Review)")
              ],
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              if (x == false) {
                x = true;
              } else {
                x = false;
              }
            });
          },
          child: CircleAvatar(
            maxRadius: 20,
            backgroundColor: Colors.grey.withOpacity(.3),
            child: x == false
                ? const Icon(
                    Icons.favorite_outline,
                    size: 30,
                  )
                : const Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.red,
                  ),
          ),
        )
      ],
    );
  }
}
