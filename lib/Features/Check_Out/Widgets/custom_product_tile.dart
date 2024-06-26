import 'package:flutter/material.dart';

class custom_product_tile extends StatelessWidget {
  const custom_product_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("Assets/images/19.jpg"),
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bix Bag Limitid edition",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "67.00 \$",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
