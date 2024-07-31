import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Home/Manager/add_to_cart_cubit/cubit/add_to_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class custom_addtocart extends StatelessWidget {
  const custom_addtocart({
    super.key,
    this.ontap,
    this.product,
  });
  final void Function()? ontap;
  final product_model? product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<AddToCartCubit>(context).addToCart(product!);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(milliseconds: 400),
            backgroundColor: Colors.blue,
            content: Text("Added To Cart"),
          ),
        );
      },
      child: Container(
        width: 190,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.pink[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              FontAwesomeIcons.bagShopping,
              color: Colors.white,
              size: 30,
            ),
            Text(
              "Add to Cart",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
