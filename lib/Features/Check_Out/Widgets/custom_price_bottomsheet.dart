import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class custom_price_bottomsheet extends StatelessWidget {
  const custom_price_bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(
            children: [
              Text(
                "Subtotal",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Text(
                "93.00 \$",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                "Shiping",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Text(
                "6.00 \$",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          const Text(
            "---------------------------------",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey,
            ),
          ),
          const Row(
            children: [
              Text(
                "Total amount",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Text(
                "99.00 \$",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(payment_view_rout);
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.deepPurple[500],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'CheckOut',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
