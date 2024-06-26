import 'package:bazar/Features/Product/Widget/custom_addtocart.dart';
import 'package:flutter/material.dart';

class product_price_add_to_cart extends StatelessWidget {
  const product_price_add_to_cart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
              Text(
                '24.00 \$',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        custom_addtocart()
      ],
    );
  }
}
