import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Product/Widget/Product_Description.dart';
import 'package:flutter/material.dart';

class Product_Details_Body extends StatelessWidget {
  const Product_Details_Body({super.key, this.product});
  final product_model? product;
  @override
  Widget build(BuildContext context) {
    final double Sheight = MediaQuery.of(context).size.height;
    final double Swidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .45,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("${product?.thumbnail}"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Swidth * .06,
              vertical: Sheight * .1,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.3),
                  maxRadius: 20,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Product_Decription(
              product: product,
            ),
          ),
        ],
      ),
    );
  }
}
