import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class custom_payment_card extends StatelessWidget {
  const custom_payment_card({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(add_new_card_rout);
      },
      child: Container(
        width: double.infinity,
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          // color: Colors.deepPurple[500],
          border: Border.all(),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(
              "Assets/Icons/credit-card.png",
              scale: 8,
            ),
            const SizedBox(width: 10),
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Master Card",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text("**** **** 1234"),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
