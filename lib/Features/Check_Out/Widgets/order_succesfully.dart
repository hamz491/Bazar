import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

Future<dynamic> order_succesfully(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(height: 40),
              SizedBox(
                height: 150,
                width: 150,
                child: SvgPicture.asset("Assets/images/order_complet.svg"),
              ),
              const SizedBox(height: 10),
              const Text(
                "Order Successfully",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Your Order Will Be Packed by the clerk, will arrive at your house in 3 or 4 days",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Custom_Button(
                txt: "Order Tracking",
                onTap: () {
                  GoRouter.of(context).pushReplacement(my_order_view_rout);
                },
              )
            ],
          ),
        ),
      );
    },
  );
}
