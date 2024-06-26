import 'package:bazar/Features/Order_Tracking/widgets/history.dart';
import 'package:bazar/Features/Order_Tracking/widgets/my_order.dart';
import 'package:flutter/material.dart';

class tab_bar_view extends StatelessWidget {
  const tab_bar_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        my_order(),
        history(),
      ],
    );
  }
}
