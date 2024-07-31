import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Features/Check_Out/Widgets/Cart_Tile.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Cart_View_Body extends StatefulWidget {
  const Cart_View_Body({super.key});

  @override
  State<Cart_View_Body> createState() => _Cart_View_BodyState();
}

class _Cart_View_BodyState extends State<Cart_View_Body> {
  var x = Hive.box(kCartBox);
 
  @override
  Widget build(BuildContext context) {
    List products = x.values.toList();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Cart_Tile(
                ontap: () async {
                  final items = x.values.toList();
                  final filteredItems =
                      items.where((item) => item != products[index]).toList();
                  await x.clear();
                  await x.addAll(filteredItems);
                  setState(() {});
                },
                product: products[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
