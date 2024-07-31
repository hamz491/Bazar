import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Product/Widget/procut_count.dart';
import 'package:bazar/Features/Product/Widget/product_name.dart';
import 'package:bazar/Features/Product/Widget/product_price_add_to_cart.dart';
import 'package:bazar/Features/Product/Widget/product_type.dart';
import 'package:flutter/material.dart';

class Product_Decription extends StatelessWidget {
  const Product_Decription({super.key, this.product});
  final product_model? product;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .58,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(height: 20),
              product_name(
                title: product?.title,
              ),
              const SizedBox(height: 20),
              Text(
                '${product?.description}',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 20),
              product_type(
                brand: product?.brand,
                category: product?.category,
              ),
              const Divider(
                color: Colors.grey,
                endIndent: 5,
                indent: 5,
                thickness: .8,
              ),
              const SizedBox(height: 30),
              product_price_add_to_cart(
                product: product,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
