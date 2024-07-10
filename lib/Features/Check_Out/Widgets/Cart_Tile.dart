import 'package:bazar/Features/Product/Widget/custom_counter.dart';
import 'package:flutter/material.dart';

class Cart_Tile extends StatelessWidget {
  const Cart_Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 130,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("Assets/images/14.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      height: 40,
                      width: 100,
                      child: custom_counter(),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      child: Icon(Icons.delete),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 7),
          const Row(
            children: [
              Text(
                "Box Headphone",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "32.00 \$",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
