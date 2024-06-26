import 'package:bazar/Core/Widgets/Custom_Auth_Button.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_TextField.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class add_new_card_body extends StatelessWidget {
  const add_new_card_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Card Number",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Custom_TextField(
              enabled: true,
              hinttxt: "Enter Card Number",
              prefixcolor: Colors.grey,
              icon: Icons.numbers,
            ),
            const SizedBox(height: 20),
            const Text(
              "Card Holder Name",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Custom_TextField(
              enabled: true,
              hinttxt: "Enter Holder Name",
              prefixcolor: Colors.grey,
              icon: Icons.person,
            ),
            const SizedBox(height: 20),
            const Text(
              "Expired",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Custom_TextField(
              enabled: true,
              hinttxt: "MM/YY",
              prefixcolor: Colors.grey,
              icon: Icons.date_range,
            ),
            const SizedBox(height: 20),
            const Text(
              "CVV Code",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Custom_TextField(
              enabled: true,
              hinttxt: "CVV Code",
              prefixcolor: Colors.grey,
              icon: Icons.lock,
            ),
            const SizedBox(height: 20),
            Custom_Button(
              txt: "Add Card",
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
