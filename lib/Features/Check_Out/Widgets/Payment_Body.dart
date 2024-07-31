import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Check_Out/Widgets/custom_location_tile.dart';
import 'package:bazar/Features/Check_Out/Widgets/custom_payment_card.dart';
import 'package:bazar/Features/Check_Out/Widgets/custom_product_tile.dart';
import 'package:bazar/Features/Check_Out/Widgets/order_succesfully.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Payment_Body extends StatefulWidget {
  const Payment_Body({super.key});

  @override
  State<Payment_Body> createState() => _Payment_BodyState();
}

class _Payment_BodyState extends State<Payment_Body> {
  var x = Hive.box(kCartBox);
  double total = 0;
  @override
  Widget build(BuildContext context) {
    for (var i in x.values.toList()) {
      total += i.price;
    }
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
              itemCount: x.values.length,
              itemBuilder: (context, index) {
                return custom_product_tile(
                  product: x.values.toList()[index],
                );
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
              Text(
                "$total \$",
                style: const TextStyle(
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
