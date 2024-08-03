import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:flutter/material.dart';

class Cart_Tile extends StatefulWidget {
  const Cart_Tile({super.key, this.product, this.ontap});
  final product_model? product;
  final void Function()? ontap;
  @override
  State<Cart_Tile> createState() => _Cart_TileState();
}

class _Cart_TileState extends State<Cart_Tile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 130,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("${widget.product!.thumbnail}"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: widget.ontap,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        child: Icon(Icons.delete),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Text(
                "${widget.product!.title}",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Spacer(),
              Text(
                "${widget.product!.price} \$",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
