import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:flutter/material.dart';

class custom_product_tile extends StatelessWidget {
  const custom_product_tile({super.key, this.product});
  final product_model? product;
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
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("${product!.thumbnail}"),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${product!.title}",
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "${product!.price} \$",
                style: const TextStyle(
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
