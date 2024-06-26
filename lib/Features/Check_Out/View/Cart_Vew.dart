import 'package:bazar/Features/Check_Out/Widgets/Cart_View_Body.dart';
import 'package:bazar/Features/Check_Out/Widgets/custom_price_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Cart_View extends StatelessWidget {
  const Cart_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: (context) {
              return const custom_price_bottomsheet();
            },
          );
        },
        child: Image.asset(
          "Assets/Icons/icons8-bag-50.png",
          scale: 1.5,
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 28,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        title: Text('My Cart'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset("Assets/Icons/icons8-bag-100.png"),
            ),
          ),
        ],
      ),
      body: const Cart_View_Body(),
    );
  }
}
