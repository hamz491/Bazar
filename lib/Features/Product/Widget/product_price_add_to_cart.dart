import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Home/Manager/add_to_cart_cubit/cubit/add_to_cart_cubit.dart';
import 'package:bazar/Features/Product/Widget/custom_addtocart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class product_price_add_to_cart extends StatelessWidget {
  const product_price_add_to_cart({
    super.key,
    this.product,
  });
  final product_model? product;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 14, right: 10, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '${product!.price}',
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        BlocProvider(
          create: (context) => AddToCartCubit(),
          child: custom_addtocart(product: product),
        ),
      ],
    );
  }
}
