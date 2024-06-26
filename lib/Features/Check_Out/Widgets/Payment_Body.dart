import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Check_Out/Widgets/custom_location_tile.dart';
import 'package:bazar/Features/Check_Out/Widgets/custom_payment_card.dart';
import 'package:bazar/Features/Check_Out/Widgets/custom_product_tile.dart';
import 'package:bazar/Features/Check_Out/Widgets/order_succesfully.dart';
import 'package:flutter/material.dart';

class Payment_Body extends StatelessWidget {
  const Payment_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Address",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const custom_location_tile(),
          const SizedBox(height: 10),
          const Text(
            "Products",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const custom_product_tile();
              },
            ),
          ),
          const Divider(),
          const Text(
            "Payment Method",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const custom_payment_card(),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "totoal amount",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade600,
                ),
              ),
              const Text(
                "99.00\$",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Custom_Button(
            txt: "Checkout Know",
            onTap: () {
              order_succesfully(context);
            },
          ),
        ],
      ),
    );
  }
}
