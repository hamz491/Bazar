import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Features/Order_Tracking/widgets/my_order_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class my_order_view extends StatelessWidget {
  const my_order_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Order",
          style: TextStyle(fontSize: 19),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 35,
              ),
              onPressed: () {
                GoRouter.of(context).push(Cart_view_rout);
              },
            ),
          )
        ],
      ),
      body: const my_order_body(),
    );
  }
}
