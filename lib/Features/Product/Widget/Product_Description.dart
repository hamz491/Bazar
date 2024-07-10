import 'package:bazar/Features/Product/Widget/procut_count.dart';
import 'package:bazar/Features/Product/Widget/product_name.dart';
import 'package:bazar/Features/Product/Widget/product_price_add_to_cart.dart';
import 'package:bazar/Features/Product/Widget/product_type.dart';
import 'package:flutter/material.dart';

class Product_Decription extends StatelessWidget {
  const Product_Decription({super.key});

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
              const product_name(),
              const SizedBox(height: 20),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typisting industry. Lorem Ipsum has been the industry\'s standard',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 15),
              const product_type(),
              const Divider(
                color: Colors.grey,
                endIndent: 5,
                indent: 5,
                thickness: .7,
              ),
              const SizedBox(height: 6),
              const procut_count(),
              const SizedBox(height: 30),
              const product_price_add_to_cart(),
            ],
          ),
        ),
      ),
    );
  }
}
