import 'package:flutter/material.dart';

class product_type extends StatelessWidget {
  const product_type({
    super.key,
    this.brand,
    this.category,
  });
  final String? brand;
  final String? category;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                'Brand: $brand',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                'Category: $category',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
