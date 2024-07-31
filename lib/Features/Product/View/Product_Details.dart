import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Product/Widget/Product_Details_Body.dart';
import 'package:flutter/material.dart';

class Product_Details extends StatelessWidget {
  const Product_Details({super.key, this.product});
  final product_model? product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Product_Details_Body(
        product: product,
      ),
    );
  }
}
