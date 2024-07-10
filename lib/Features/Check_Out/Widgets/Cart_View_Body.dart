import 'package:bazar/Features/Check_Out/Widgets/Cart_Tile.dart';
import 'package:flutter/material.dart';

class Cart_View_Body extends StatelessWidget {
  const Cart_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Cart_Tile();
            },
          ),
        ),
      ],
    );
  }
}
