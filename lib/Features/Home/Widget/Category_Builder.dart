import 'package:bazar/Features/Home/Widget/Category_Tile.dart';
import 'package:flutter/material.dart';

class Category_Builder extends StatelessWidget {
  const Category_Builder({super.key, required this.n});
  final int n;
  final List<String> category_list = const [
    "Phones",
    "Laptops",
    "Fragrances",
    "skincare",
    "groceries",
    "Decoration",
    "Furniture",
    "Tops",
    "Tomens-dresses",
    "Tomens-shoes",
    "Mens-shirts",
    "Mens-shoes",
    "Mens-watches",
    "Womens-watches",
    "Womens-bags",
    "Womens-jewellery",
    "Sunglasses",
    "Automotive",
    "Motorcycle",
    "Lighting"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: category_list.length,
      itemBuilder: (context, index) {
        return Category_Tile(
          txt: category_list[index],
          index: index,
        );
      },
    );
  }
}
