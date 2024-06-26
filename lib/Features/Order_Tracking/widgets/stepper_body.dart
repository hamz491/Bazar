import 'package:bazar/Features/Order_Tracking/widgets/time_line_tile.dart';
import 'package:flutter/material.dart';

class stepper_body extends StatelessWidget {
  const stepper_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 0,
            ),
            child: Text(
              "Progress Of Your Order",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: time_line_tile(),
          ),
        ],
      ),
    );
  }
}
