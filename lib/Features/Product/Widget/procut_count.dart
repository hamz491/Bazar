import 'package:bazar/Features/Product/Widget/custom_counter.dart';
import 'package:flutter/material.dart';

class procut_count extends StatelessWidget {
  const procut_count({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Choose amount: ',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        custom_counter(),
      ],
    );
  }
}
