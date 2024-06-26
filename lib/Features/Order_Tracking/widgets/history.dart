import 'package:bazar/Features/Order_Tracking/widgets/product_checkout_tile.dart';
import 'package:flutter/material.dart';

class history extends StatelessWidget {
  const history({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: product_ckeckout_tile(
            x: false,
          ),
        );
      },
    );
  }
}
