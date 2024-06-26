import 'package:bazar/Features/Order_Tracking/widgets/tab_bar.dart';
import 'package:bazar/Features/Order_Tracking/widgets/tab_bar_view.dart';
import 'package:flutter/material.dart';

class my_order_body extends StatelessWidget {
  const my_order_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 10),
            tab_bar(),
            SizedBox(height: 10),
            Expanded(
              child: tab_bar_view(),
            ),
          ],
        ),
      ),
    );
  }
}
