import 'package:bazar/Features/Order_Tracking/widgets/my_timeline.dart';
import 'package:flutter/material.dart';

class time_line_tile extends StatelessWidget {
  const time_line_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        children: [
          my_timeline(
            title: "Order Confirm",
            isFirst: true,
            isLast: false,
            isDone: true,
          ),
          my_timeline(
            title: "On The Way",
            isFirst: false,
            isLast: false,
            isDone: true,
          ),
          my_timeline(
            title: "Delivered",
            isFirst: false,
            isLast: true,
            isDone: false,
          ),
        ],
      ),
    );
  }
}
