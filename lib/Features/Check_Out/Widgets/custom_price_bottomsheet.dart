import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Core/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

class custom_price_bottomsheet extends StatefulWidget {
  const custom_price_bottomsheet({super.key});

  @override
  State<custom_price_bottomsheet> createState() =>
      _custom_price_bottomsheetState();
}

class _custom_price_bottomsheetState extends State<custom_price_bottomsheet> {
  @override
  Widget build(BuildContext context) {
    List x = Hive.box(kCartBox).values.toList();
    double total = 0;
    for (var i in x) {
      setState(() {
        total += i.price!;
      });
    }
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Text(
                "Subtotal",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              Text(
                "${total.toStringAsFixed(2)} \$",
                style: const TextStyle(
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
          Row(
            children: [
              const Text(
                "Total amount",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              Text(
                "${(total + 6).toStringAsFixed(2)} \$",
                style: const TextStyle(
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
